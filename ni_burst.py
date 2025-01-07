# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

抽取源中X射线暴的时间分辨能谱

"""


import os
import sys
import numpy as np
import stingray
import scipy.io
from astropy.io import fits
import matplotlib.pyplot as plt
from nicer_fuc import *

def plot_bur_bkg(time,rate,bkg_start,bkg_stop,burst_start,burst_stop,sleep):
    bkg_indices = np.where((tt> bkg_start) & (tt < bkg_stop))[0]
    burst_indices = np.where((tt > burst_start) & (tt< burst_stop))[0]
    all_indices = np.where((tt > min(bkg_start, bkg_stop, burst_start, burst_stop)) & 
                        (tt < max(bkg_start, bkg_stop, burst_start, burst_stop)))[0]

    # plt.figure(figsize=(5, 5))  
    ax1.plot(time[all_indices], rate[all_indices], color='black')
    ax1.plot(time[bkg_indices], rate[bkg_indices], color='green', label='Background')
    ax1.plot(time[burst_indices], rate[burst_indices], color='red', label='Burst')
    #ax1.legend()
    ax1.set_xlabel('Time (s)')
    ax1.set_ylabel('Rate (counts/s)')

    ax1.set_title('Light Curve with Background and Burst Indicated')

    plt.draw()  
    plt.pause(sleep) 
    

print();print_log(f' NICER DATA REDUCTION PIPELINE '.center(80, '-')); print()
print_log(' Author:Professor Zhaosheng Li , modified by Long Peng'.center(80, ' '));print()
print_log(f' See web page: https://www.plxray.cn/ '.center(80, ' '),masks='https://www.plxray.cn/'); print()
print_log(' Script created on June 2024'.center(80, ' '));print()
print_log('--'.center(80, '-'));print()
time.sleep(1)

cwd = os.getcwd()
t = 0
dt = 0.125  #初始长度
long = []   #储存切片曝光长度
counts_list = [5000, 8000]  #这个值总是要修改的
conspec_t_list = [64, 64]

obs_list = np.loadtxt("burst_obs.txt",dtype=str, ndmin=1)
#obs_list = get_obs(cwd)
#obs_list = ['1050080128','1050080126']

p = 0
fig1, ax1 = plt.subplots(figsize=(6, 4)) #遮挡视野可调这里
plt.ion()  
for obs in obs_list:
    print_log(obs)

    obs = obs[0:10]
    mat_path = os.path.join(cwd,obs,'burst_no1.mat')  #存在第二个暴请修改为no2
    path = os.path.join(cwd,obs)
    try:
        data =  scipy.io.loadmat(mat_path)
    except:
        print_log(f'{obs} 中不存在burst_no1.mat ? 跳过时间切片 '.center(80, '-'))
    print(data['dur'])

    if data['isburst']=='y':
        
        counts = counts_list[p]
        conspec_t = conspec_t_list[p]
        p += 1

        print_log(f'对{obs}进行能谱切片')

        #os.chdir(path)
        burst_number = (data['number'][0])
        print_log(f'{obs} 存在{burst_number}个暴')
        mkffile = os.path.join(cwd, f'{obs}/ni{obs}.mkf')
        
        for i in range(data['number'][0][0]):
        #for i in list([2])
            bur_number=i+1

            # bkg_start, bkg_stop, burst_start,  burst_stop = data['dur'][0]
            # # bkg_start,bkg_stop=115457482.704163,115459482.704163
            # # burst_start, burst_stop=115462766.239008,115462781.239008

            #光变
            print();print_log(f' 生产光变 '.center(80, '-')); print()
            cmd ,ifok_file= build_nicerl3_lc(obs, 0.5, 10, 0.125)
            ifok_path = os.path.join(cwd,obs,ifok_file)
            run_cmd(cmd,logtotxt='yes',ifok=ifok_path)

            lc_path = os.path.join(path,f'ni{obs}mpu7_sr2E-3.lc')

            lc_data = fits.open(lc_path)

            lc = lc_data[1].data
            t0 = lc_data[1].header['TIMEZERO']
            src_name = lc_data[1].header['object']
            time = np.array(lc.field('time'))
            tt = time + t0 
            rate = np.array(lc.field('rate'))

            matfile = os.path.join(cwd,obs,f'burst_no{bur_number}.mat') 
            data =  scipy.io.loadmat(matfile)
            bkg_start, bkg_stop, burst_start,  burst_stop = data['dur'][0][0:4]
            bkg_start = bkg_stop-conspec_t

            bkg_cts=np.mean(rate[np.all([tt >= bkg_start, tt < bkg_stop],axis=0)])
            print_log("The bkg count rate is " + str(bkg_cts),masks= str(bkg_cts))
            bur_ID = str(i+1)

            ##预览图
            plot_bur_bkg(time,rate,bkg_start,bkg_stop,burst_start,burst_stop,5)

            #背景能谱
            print();print_log(f' 生产持续能谱 '.center(80, '-')); print()
            bkg_gti = os.path.join(path, f'bkg.gti') 
            bkg_pha = os.path.join(path, f'bkg_{obs}.pha') 
            cmd_bkg_gti = f'maketime {mkffile} {bkg_gti} "((TIME >= {bkg_start}).and.(TIME <= {bkg_stop}))" anything anything TIME no clobber=yes'  
            run_cmd(cmd_bkg_gti,logtotxt='yes')

            ax1.clear()
            cmd ,ifok_file= build_nicerl3_spect(obs, 'optmin', '3c50',phafile= bkg_pha,gtifile=bkg_gti,ifok_file=bkg_pha)
            run_cmd(cmd,logtotxt='yes',ifok=bkg_pha)   #设置ifok为任意其他值将重新运行

            t1=burst_start
            bur_no = 1

            while t1<=burst_stop:
                maxrate1 = 0
                newdt = dt
                print(newdt)
                if not rate[np.all([tt>=t1, tt<t1+newdt],axis=0)].size == 0:
                    maxrate1=np.max(rate[np.all([tt>=t1, tt<t1+newdt],axis=0)]) 
                    print(maxrate1)   
                while newdt*maxrate1 < counts:
                    newdt = 2*newdt
                    print(newdt)
                    if not rate[np.all([tt>=t1, tt<t1+newdt],axis=0)].size == 0:
                        maxrate1=np.max(rate[np.all([tt>=t1, tt<t1+newdt],axis=0)])
                        print_log("The maximum count rate of this interval " + str(maxrate1),masks = str(maxrate1)) 
                else:
                    print();print_log(f' 生产暴的时间分辨能谱 '.center(80, '-')); print()
                    print();print_log(f' 切片{bur_no},长度为{newdt} s'.center(80, '-')); print()
                    t2 = t1 + newdt
                    bur_gti = os.path.join(path, f'b{bur_no}_{obs}.gti') 
                    bur_pha = os.path.join(path, f'b{bur_no}_{obs}.pha') 
                    cmd_bur_gti = f'maketime {mkffile} {bur_pha} "((TIME >= {t1}).and.(TIME <= {t2}))" anything anything TIME no clobber=yes'  
                    run_cmd(cmd_bur_gti,logtotxt='yes')

                    cmd ,ifok_file= build_nicerl3_spect(obs, 'optmin', '3c50',gtifile=bur_gti,phafile= bur_pha,ifok_file=bur_pha)
                    run_cmd(cmd,logtotxt='yes',ifok=bur_pha) 

                    t=t+newdt
                    long.append(t)
                    time_dat='time'+str(bur_ID)+'.dat'
                    time_dat_path = os.path.join(path,time_dat)
                    bur_no += 1
                    
                    #预览图
                    plot_bur_bkg(time,rate,bkg_start,bkg_stop,t1,t2,2)

                    t1+=newdt
                print(newdt)
            np.savetxt(time_dat_path,long  )
            long.clear()
