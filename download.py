# -*- coding: utf-8 -*-
"""
Created on May 4th 2023
@author: Long Peng
@web page: https://www.plxray.cn/

use: 在browse_download_script.txt文件夹下使用
"""
import os,sys
import shutil
import time
from multiprocessing import Pool, cpu_count
from datetime import datetime

def download_wget(cmd):
    """
    执行cmd并打印时间的简化版
    """
    print('下载：', cmd)
    start_time = time.time()  
    os.system(cmd)
    end_time = time.time()  
    
    # 计算运行时间并打印
    run_time = end_time - start_time
    print(f'下载完毕：{cmd}')
    print(f'运行时间: {run_time} 秒')

def pool(num_processes,list):
    """
    多进程迟函数的简化泛用版
    """
    n = 0
    with Pool(num_processes) as p:
        results = []
        for command in list:
            n += 1
            # 创建带有部分参数的函数
            result = result = p.apply_async(download_wget, args=(command,))
            results.append(result)
        p.close()
        p.join()   
    for result in results:
        result.get()

def read_and_sort_file(file_path):
    """
    读取并排序，返回列表
    """
    with open(file_path, "r") as file:
        lines = file.readlines()
    lines.sort()
    return lines

def write2file(info, file_path):
    """
    将info写入file_path
    """
    with open(file_path, 'a') as file:
        file.write(info)

def check_and_prepare_commands(lines, cwd, num_processes):
    """
    返回cmd,需要重新下载的obs,以及相关信息
    """
    cmds = []
    obs_bad = []
    info = f'info: {datetime.now().strftime("%Y-%m-%d")}\n'
    for line in lines:
        command = line.strip()
        if not command.startswith("wget"):
            continue

        obs = line[-12:-2]
        obs_path = os.path.join(cwd, obs)
        mk_gz_file = os.path.join(cwd, obs, 'auxil', f'ni{obs}.mkf.gz')
        mk_file = os.path.join(cwd, obs, 'auxil', f'ni{obs}.mkf')
        hk_path = os.path.join(cwd, obs, 'xti', 'hk')
        command = command +' --show-progress'
        write2file(command+'\n', 'download.sh')

        add_to_cmds = True

        if not os.path.exists(obs_path):
            print(f'{obs} not exists')
        elif os.path.exists(hk_path):
            file_list = os.listdir(hk_path)
            os.system(f'gunzip -f -d {mk_gz_file}')

            if not file_list:
                obs_bad.append(obs)
                info += f'obs:{obs} have no hk file, delete {hk_path}\n'
                os.system(f'rm -r {obs_path}')
            elif not os.path.isfile(mk_file):
                obs_bad.append(obs)
                info += f'obs:{obs} mkf file error\n'
                shutil.rmtree(obs_path)
            else:
                add_to_cmds = False  
        else:
            print(f'{obs} missing hk path')
        print(info)

        # 如果需要下载，则加入 cmds
        if add_to_cmds:
            cmds.append(command)

    return cmds, info

def download_commands_in_parallel(cmds, num_processes):
    """
    根据 num_processes 决定是否执行多线程，并将最大线程数限制为计算机最大支持 CPU 核数的一半。
    如果超过限制，打印警告信息。
    """
    max_processes = max(1, cpu_count() // 2)  # 至少为 1，最多为 CPU 核数的一半
    if num_processes > max_processes:
        print(f"警告: 指定的线程数 {num_processes} 超过最大建议值 {max_processes}，将自动调整为 {max_processes}。")
        num_processes = max_processes

    if num_processes == 1:
        for cmd in cmds:
            download_wget(cmd)
    else:
        print(f'多线程模式: 使用 {num_processes} 个线程')
        pool(num_processes, cmds)
                
def main(): 
    num_processes = 2   #执行核数
    cwd = os.getcwd()

    lines = read_and_sort_file("browse_download_script.txt")
    cmds, info = check_and_prepare_commands(lines, cwd, num_processes)

    write2file(info, 'obs_info.txt')

    cmds = sorted(cmds)
    download_commands_in_parallel(cmds, num_processes)

if __name__ == "__main__":
    main()