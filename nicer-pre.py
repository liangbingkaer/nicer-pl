# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

need: astroquery
nicer数据预处理,注意未质心修正，有时间再加
use eg:
"""
import os,sys,glob
import shutil
import time
import logging
import subprocess
from datetime import datetime
import matplotlib.pyplot as plt
from astropy.table import Table
from nicer_fuc import *

def copy_mkf_orb(input_obs, output_obs, obs, file_tags=['mkf', 'orb'], overwrite=False):
    """
    解压并复制指定文件到输出目录，可选择是否覆盖已存在的文件。

    参数：
        input_obs (str): 输入目录路径。
        output_obs (str): 输出目录路径。
        obs (str): 观测标识符，用于构建文件名。
        file_tags (list): 文件类型标签列表，默认包括 'mkf' 和 'orb'。
        overwrite (bool): 是否覆盖已存在的文件，默认为 False。
    """
    for file_tag in file_tags:
        mkf_file = os.path.join(input_obs, 'auxil', f'ni{obs}.{file_tag}')
        mkf_gz_file = os.path.join(input_obs, 'auxil', f'ni{obs}.{file_tag}.gz')
        output_file = os.path.join(output_obs, f'ni{obs}.{file_tag}')

        if os.path.exists(output_file) and not overwrite:
            print(f"Info: {output_file} already exists. Skipping copy.")
            continue

        if os.path.exists(mkf_file):
            shutil.copy(mkf_file, output_obs)
            print(f"Copied {mkf_file} to {output_obs}.")
        elif os.path.exists(mkf_gz_file):
            cmd = f'gunzip -f -d {mkf_gz_file}'
            os.system(cmd)
            if os.path.exists(mkf_file):
                shutil.copy(mkf_file, output_obs)
                print(f"Decompressed and copied {mkf_file} to {output_obs}.")
            else:
                print(f"Warning: Decompressed file {mkf_file} not found after gunzip.")
        else:
            print(f"Warning: Neither {mkf_file} nor {mkf_gz_file} exists.")


def main(): 
    cwd = os.getcwd()

    pass_obs = ['1050080126' ]
    src_name = '4u 1636-536' #aql x-1
    source_download_path = "/media/pl/EXTERNAL_USB/work/nicer/test/4u1636-536"
    
    filetag = 'NICERV3,3c50'
    ln_dir = os.path.join(cwd,'ln')
    # 根据原始数据存放位置,建立软链接
    create_symlinks(source_download_path)

    print();print_log(f' NICER DATA REDUCTION PIPELINE '.center(80, '-')); print()
    print_log(' Author: Long Peng '.center(80, ' '));print()
    print_log(f' See web page: https://www.plxray.cn/ '.center(80, ' '),masks='https://www.plxray.cn/'); print()
    print_log(' Script created on June 2024'.center(80, ' '));print()
    print_log('--'.center(80, '-'));print()
    time.sleep(3)

    print_log(f'程序开始：当前路径{cwd}\n', log_files='time')
    print_log(f'运行日期：{datetime.now().strftime("%Y-%m-%d %H:%M")}\n', log_files='time')
    print_log(f'source:{src_name}',masks=src_name)
    time.sleep(3)

    #预处理
    obs_list = get_obs(ln_dir)
    for obs in obs_list:
        if obs in pass_obs:
            print_log(f'\n 跳过白名单：obs = {obs}')
            continue
        print_log(f'\nobs = {obs}',masks = obs,log_files='time')
        input_obs = os.path.join(ln_dir,obs)
        output_obs = os.path.join(cwd,obs)
        # output_obs = os.path.join(work_dir,obs)
        # os.makedirs(output_obs, exist_ok=True)

        cl_name = 'ni'+obs+'_0mpu7_cl.evt'
        cl_path = os.path.join(output_obs,cl_name)
        # cl_gz_name = 'ni'+obs+'_0mpu7_cl.evt.gz'

        command = f"nicerl2 indir={input_obs} incremental=NO filtcolumns={filetag} clobber=YES cldir={output_obs} "
        run_cmd(command ,logtotxt = 'yes',ifok=cl_path)
        copy_mkf_orb(input_obs, output_obs, obs)

        sci_png = os.path.join(output_obs,f'ni{obs}_bkg.png')
        orbfile = glob.glob(output_obs + '/*.orb')
        mkffile = glob.glob(output_obs + '/*.mkf*')

        mktable = Table.read(mkffile[0])
        if 'FPM_RATIO_REJ_COUNT' not in mktable.colnames:
            print("FPM_RATIO_REJ_COUNT列不存在,nicerl2 运行不成功，请重新运行")
            run_cmd(command ,logtotxt = 'yes',ifok='1')
        else:
            #extra_nicerql_args = ['--save','--emin','0.5','--emax','10']
            cmd = f'nicerql.py {cl_path} --orb {orbfile[0]} --mkf {mkffile[0]} --save --emin 0.5 --emax 10'
            try:
                run_cmd(cmd,logtotxt = 'yes',ifok=sci_png)
                png_files = glob.glob(f'ni*{obs}*png')
                for i in range(len(png_files)):
                    subprocess.run(['mv',png_files[i],output_obs+'/'])
            except:
                png_files = glob.glob(f'ni*{obs}*png')
                for i in range(len(png_files)):
                    subprocess.run(['mv',png_files[i],output_obs+'/'])
                print('')
        #nicerl3-lc提取光变
        cmd ,ifok_file= build_nicerl3_lc(obs, 0.5, 10, 1)
        ifok_path = os.path.join(cwd,obs,ifok_file)
        run_cmd(cmd,logtotxt='yes',ifok=ifok_path)

        cmd ,ifok_file= build_nicerl3_lc(obs, 12, 15, 1)
        ifok_path = os.path.join(cwd,obs,ifok_file)
        run_cmd(cmd,logtotxt='yes',ifok=ifok_path)

        cmd ,ifok_file= build_nicerl3_lc(obs, 0.5, 10, 0.125)
        ifok_path = os.path.join(cwd,obs,ifok_file)
        run_cmd(cmd,logtotxt='yes',ifok=ifok_path)

        cmd ,ifok_file= build_nicerl3_spect(obs, 'optmin')
        ifok_path = os.path.join(cwd,obs,ifok_file)
        run_cmd(cmd,logtotxt='yes',ifok=ifok_path)

        cmd ,ifok_file= build_nicerl3_spect(obs, 'nogrp')
        ifok_path = os.path.join(cwd,obs,ifok_file)
        run_cmd(cmd,logtotxt='yes',ifok=ifok_path) 

        extract_ufa(obs, 0.5,10,1)

if __name__ == "__main__":
    main()





