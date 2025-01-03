# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

源的背景和光变一起画

"""

import os
from astropy.io import fits
import matplotlib.pyplot as plt
import numpy as np
from nicer_fuc import *

cwd = os.getcwd()
obs_list = get_obs(cwd)

print_my_info()

fig1, ax1 = plt.subplots(figsize=(8, 6))
plt.ion()  # 启用交互式模式
for obs in obs_list:
    lc_file = f'ni{obs}mpu7_sr1s.lc'
    lc_path = os.path.join(cwd,obs,lc_file)  
    bkg_file = f'ni{obs}mpu7_srbkg_1s.lc'
    bkg_path = os.path.join(cwd,obs,bkg_file)  


    with fits.open(lc_path) as data:
        times = np.array(data[1].data['TIME'])
        rates = np.array(data[1].data['RATE'])
        src_name = data[1].header['object']

    with fits.open(bkg_path) as data_b:
        ev_file_b = data_b[1].data
        times_b=np.array(ev_file_b.field('time'))
        rates_b=np.array(ev_file_b.field('rate'))

    try:
        ax1.clear()
        ax2.clear()
        ax2.yaxis.set_visible(False)
        ax2.xaxis.set_visible(False)
    except:
        pass

    ax1.plot(times ,rates)
    ax1.set_title(src_name +':'+ obs)
    ax1.set_xlabel("Time (s)")
    ax1.set_ylabel("Counts/s")
    ax1.set_xlim(0,1.1*max(times))
    ax2 = ax1.twinx()
    ax2.plot(times_b, rates_b,'r')
    ax2.set_ylabel("12-15 keV Counts/s")
    ax2.set_ylim(0, 1.2*np.max(rates_b))
    ax2.set_xlim(0,1.1*max(times))
    ax2.yaxis.set_visible(True)

    plt.show()
    spec = input('nest obs (y or n)? = ')

