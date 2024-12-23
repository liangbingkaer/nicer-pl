# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

nicer数据按年份创建软链接
use eg:
"""

import os
import math
import re
from astropy.io import fits
import numpy as np
from nicer_fuc import *
from IPython.core.display import display, HTML
display(HTML("<style>div.output_scroll { height: 70em; }</style>"))

def mjd_to_date(mjd) :
    jd = mjd + 2400000.5
    jd += 0.5

    z = math.floor(jd)
    f = jd - z

    if z < 2299161:
        a = z
    else:
        aa = math.floor((z - 1867216.25) / 36524.25)
        a = z + 1 + aa - math.floor(aa / 4)

    b = a + 1524
    c = math.floor((b - 122.1) / 365.25)
    d = math.floor(365.25 * c)
    e = math.floor((b - d) / 30.6001)

    D = math.floor(b - d - math.floor(30.6001 * e) + f)

    if e < 14:
        M = e - 1
    elif e == 14 or e == 15:
        M = e - 13

    if M > 2:
        Y = c - 4716
    elif M == 1 or M == 2:
        Y = c - 4715

    print("MJD{}转换成日期为：{}年{}月{}日".format(mjd,Y, M, D))
    return Y

def main(): 
    year_sel = 2017
    cwd= os.getcwd()
    year_path = os.path.join(cwd,str(year_sel))
    os.makedirs(year_path, exist_ok=True)
    obs_list = get_obs(cwd)
    src_name = '4u 1636-536' #aql x-1

    print_my_info()

    for obs in obs_list:
        print(obs)

        lc_file = f'ni{obs}mpu7_sr1s.lc'
        lc_path = os.path.join(cwd,obs,lc_file)  

        data = fits.open(lc_path)
        ev_file = data[1].data
        # time=np.append(time,np.array(ev_file.field('time'))/24.0/3600.0)
        # rate=np.append(rate,np.array(ev_file.field('rate')))

        rate_obs = np.array(ev_file.field('rate'))
        T0=data[1].header['MJD-OBS'] 

        if len(rate_obs) != 0:  
            year = mjd_to_date(T0)               
            if year == year_sel:
                source_path =os.path.join(cwd,obs)
                lk_path = os.path.join(year_path,obs)
                create_symlinks(source_path,lk_path)

if __name__ == "__main__":
    main()