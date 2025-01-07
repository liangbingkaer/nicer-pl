# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

nicer数据观察是否存在暴，获取暴的持续时间
use eg: python3 burst_cut.py {obs}

"""

import os
import sys
import numpy as np
import scipy.io
from astropy.io import fits
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1.inset_locator import inset_axes
from nicer_fuc import *

if len(sys.argv) > 1:
    try:
        start_obs = int(sys.argv[1])
    except ValueError:
        print("Invalid obs provided.")
else:
    start_obs = 1

def savefilenodb(file,obs):
    with open(file, 'a') as burst_file:

        with open(file, 'r') as read_file:
            existing_obs = set(line.strip() for line in read_file)
        # 检查obs是否已存在，如果不存在则写入
        if obs not in existing_obs:
            burst_file.write(obs + '\n')  

def main(): 
    ufa = 1  #观察ufa请设置为1
    maxrate  = 100
    print_my_info()
    cwd = os.getcwd()
    burst_dir = os.path.join(cwd,'burst')
    os.makedirs(burst_dir, exist_ok=True)

    all_png = []
    obs_list = get_obs(cwd)

    fig1, ax1 = plt.subplots(figsize=(8, 6))
    plt.ion()  # 启用交互式模式

    for obs in obs_list:
        if start_obs >= int(obs):
            continue
        print_log(f"The obsID is {obs}")
        lc_file = f'ni{obs}mpu7_sr2E-3.lc'

        if ufa == 1 :
            lc_file = f'{obs}_1s_ufa.lc'
        lc_path = os.path.join(cwd,obs,lc_file)  

        with fits.open(lc_path) as data:
            src_name = data[1].header['object']
            try:
                t_zero = data[1].header['TSTARTI'] + data[1].header['TSTARTF'] + 40000
            except:
                t_zero = data[1].header['MJDREFI'] + data[1].header['MJDREFF'] + data[1].header['TSTART'] / 24 / 3600

            time = data[1].data['TIME']
            #frac = data[1].data['FRACEXP']
            try:
                rate = data[1].data['counts']
                #error = data[1].data['ERROR']
            except:
                rate = data[1].data['RATE']

        if len(rate) == 0:
            write2file(obs,"noexposure_obs.txt")
            continue
        t_cut_zero = time[0]

        ax1.plot(time, rate,'k')
        ax1.set_title(src_name+" Data Plot for " + obs+'  burst1')
        ax1.set_xlabel('TIME ')
        ax1.set_ylabel('RATE ')
        plt.show()

        if max(rate) < maxrate:
            info = {'isburst': 'n', 'dur': [], 'number': 0}
            print("rate < 100 , ignore")
            savefilenodb("lessthan100_obs.txt",obs)
            time = []
            rate = []

        else:
            t0 = data[1].header['TIMEZERO']
            spec = input('Does it contain X-ray burst(y or n)? = ')
            if spec == 'y':
                N_burst = int(input('How many X-ray bursts? = '))
                dur = []
                for i in range(N_burst):
                    print('前两点截取持续辐射，后两点截暴')
                    bur_ID = str(i+1)
                    print('burst'+bur_ID)
                    if i >=1:
                        print(time,rate)
                        ax1.plot(time, rate,'k')
                        ax1.set_title("Data Plot for " + obs +'  burst'+bur_ID)
                        ax1.set_xlabel('TIME ')
                        ax1.set_ylabel('RATE ')
                        plt.show()

                    ax1.set_autoscale_on(False)
                    plt.draw()
                    if i >=1:
                        print('只有一次放大图像的机会！')
                        b = np.array(plt.ginput(1))
                    a = np.array(plt.ginput(4))
                    plt.show()
                    ax1.set_autoscale_on(True)
                    a = a[:, 0] + t0
                    info = {'isburst': spec, 'dur': a.tolist(), 'number': N_burst}  
                    matfile = os.path.join(cwd,obs,f'burst_no{bur_ID}.mat') 

                    scipy.io.savemat(matfile, info) 
                    print_log('持续辐射开始时间: %.2f' % a[0])
                    print_log('持续辐射结束时间: %.2f' % a[1])
                    print_log('暴开始时间: %.2f' % a[2])
                    print_log('暴结束时间: %.2f' % a[3])
                    
                    with open(cwd+'/'+src_name+'_burst_info.txt', 'a') as file:
                        file.write(f'\nobs = {obs}\n')
                        file.write(f'all burst number = {N_burst}\n')
                        file.write(f'bur_ID = {bur_ID}\n')
                        file.write(f'dur :  {a[0]} {a[1]}  burst: {a[2]} {a[3]}\n')

                    data =  scipy.io.loadmat(matfile)

                    bkg_start, bkg_stop, burst_start,  burst_stop = data['dur'][0][0:4]
                    bkg_start =  bkg_stop-150     

                    data_lc = fits.open(lc_path,memmap=True)
                    ev_file = data_lc[1].data
                    times = np.array(ev_file.field('time'))
                    rates = np.array(ev_file.field('rate'))
                    
                    ni_burst_start = burst_start-data_lc[1].header['TIMEZERO']
                    ni_burst_stop = burst_stop-data_lc[1].header['TIMEZERO']
                    
                    index = np.where((times > ni_burst_start) & (times < ni_burst_stop))
                    ni_rates_burst = rates[index]
                    ni_times_burst = times[index]
                    times_burst=ni_times_burst-ni_times_burst[0]

                    bkg_start = bkg_start - data_lc[1].header['TIMEZERO']
                    bkg_stop = bkg_stop - data_lc[1].header['TIMEZERO']
                    index = np.where((times > bkg_start) & (times < bkg_stop))
                    rates_con = rates[index]
                    times_con = times[index]

                    ax1.plot(ni_times_burst,ni_rates_burst,'r')
                    ax1.plot(times_con,rates_con,'g')
                    ax1.set_xlabel('Time since MJD '+str(round(t_zero+t_cut_zero/24/3600,5))+' [s]')
                    ax1.set_ylabel('rate ')
                    # ax1.set_title(src_name +':'+ obs)

                    axins = inset_axes(ax1, width='30%', height='30%', loc='upper right')
                    axins.plot(ni_times_burst,ni_rates_burst,'b')
                    png =burst_dir+"/" + obs[0:10] +'_bur'+bur_ID+'.png'
                    # print(png)
                    all_png.append(png)

                    plt.savefig(png, format='png', dpi=100)  
                    savefilenodb("burst_obs.txt",obs)
                    axins.set_visible(False)
            else:
                info = {'isburst': spec, 'dur': [], 'number': 0}
            ax1.clear()  # 清除当前的图形窗口

    plt.ioff()

if __name__ == "__main__":
    main()
