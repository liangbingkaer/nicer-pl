
# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

手动对能谱进行切片,目前只支持单obs
每按两次p键为一次切片
到对应obs的nimaketime.txt中读取命令，注意在这个文件夹所在路径打开的终端运行

"""

import os
import sys
import numpy as np
from astropy.io import fits
import matplotlib.pyplot as plt
from datetime import datetime
from nicer_fuc import *

src_name = 'Aql X-1'
obs = '1050080126'

print_my_info()

print_log(f'程序开始：当前路径{cwd}\n', log_files='time')
print_log(f'运行日期：{datetime.now().strftime("%Y-%m-%d %H:%M")}\n', log_files='time')
print_log(f'source:{src_name}',masks=src_name)
time.sleep(3)

cwd = os.getcwd()
print_log(obs)

lc_file = f'ni{obs}mpu7_sr1s.lc'
lc_path = os.path.join(cwd,obs,lc_file)  
bkg_file = f'ni{obs}mpu7_srbkg_1s.lc'
bkg_path = os.path.join(cwd,obs,bkg_file) 

with fits.open(lc_path) as data:
    ev_file = data[1].data
    t_zero = data[1].header['TIMEZERO']
    print_log(f'min_t = {t_zero}')
    times = np.array(ev_file.field('time')) + t_zero
    rates = np.array(ev_file.field('rate'))

with fits.open(bkg_path) as data_b:
    ev_file_b = data_b[1].data
    times_b = np.array(ev_file_b.field('time')) + t_zero
    rates_b = np.array(ev_file_b.field('rate'))

pmin = 50
pmax = 1000
timebin = 1

fig1, ax1 = plt.subplots(figsize=(8, 6))
ax1.plot(times, rates, label='Counts/s')
ax1.set_title(src_name + ':' + src_name)
ax1.set_xlabel("Time (s)")
ax1.set_ylabel("Counts/s")
ax1.set_xlim(min(times), max(times))
# ax2 = ax1.twinx()
# ax2.plot(times_b, rates_b, 'r', label="12-15 keV Counts/s")
# ax2.set_ylabel("12-15 keV Counts/s")
# ax2.set_ylim(0, 1.2 * np.max(rates_b))
# ax2.set_xlim(min(times), max(times))
# ax2.yaxis.set_visible(True)

# 初始化变量
cwd = os.getcwd()  
mkffile = os.path.join(cwd, f'{obs}/ni{obs}.mkf')
press_count = 0
i = 1
coordinates = []
start_x = None  # 用于存储开始时间的x坐标

nimaketime_sh = os.path.join(cwd, f'{obs}/nimaketime.txt')

# 定义键盘事件处理函数
def on_key(event):
    global press_count, i, coordinates, start_x
    if event.key == 'p':
        press_count += 1
        x, y = event.x, event.y
        if event.inaxes is not None:
            x1 = round(event.xdata, 1)  # 初始化 x1
            if press_count % 2 != 0:
                start_x = x1  # 保存开始时间的x坐标
                coordinates.append((x1, y))
                print_log(f"p键已记录第{i}次gti时间开始: x1={x1:.1f}")
            if press_count % 2 == 0:
                coordinates.append((x1, y))
                print_log(f"p键已记录第{i}次gti时间结束: x2={x1:.1f}")
                if 1:
                    suffix = f'no{i}'
                    #suffix = 'low_rate'
                gtifile = os.path.join(cwd, f'{obs}/{suffix}.gti')   
                phafile = os.path.join(cwd, f'{obs}/{suffix}.pha')              
                cmd1 = f'maketime {mkffile} {gtifile} "((TIME >= {start_x}).and.(TIME <= {x1}))" anything anything TIME no clobber=yes'  
                cmd2 = f'nicerl3-spect {obs} phafile={phafile} gtifile={gtifile} bkgmodeltype=3c50 clobber=yes'
                cmd3 = f' nicerl3-lc {obs} gtifile={gtifile} pirange={pmin}-{pmax} timebin={timebin} suffix=no{i}  clobber=YES'

                print_log(cmd1)
                print_log(cmd2)
                print_log(cmd3)
                # 将cmd写入文件
                with open(nimaketime_sh, 'a') as file:  
                    file.write(f'#第{i}次切片' + '\n') 
                    file.write(f'#运行日期：{datetime.now().strftime("%Y-%m-%d %H:%M")}\n')
                    file.write(cmd1 + '\n')  
                    file.write(cmd2 + '\n')
                    file.write(cmd3 + '\n')

                i += 1  
                start_x = None  # 重置开始时间的x坐标

# 连接键盘事件
fig1.canvas.mpl_connect('key_press_event', on_key)

plt.show()
