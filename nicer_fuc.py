# -*- coding: utf-8 -*-
"""
Created on June 6 2024
@author: Long Peng
@web page: https://www.plxray.cn/

nicer数据预处理的函数库
"""

import os,sys,time
import math
import logging
import subprocess
cwd = os.getcwd()

def create_symlinks(source_path, ln_folder='ln'):
    """
    创建指向指定文件夹中所有文件的软链接。
    :param source_path: 源文件夹路径
    :param ln_folder: 软链接目标文件夹路径，默认为当前工作目录下的'ln'文件夹
    """
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    ln_folder = os.path.join(os.getcwd(), ln_folder)
    os.makedirs(ln_folder, exist_ok=True)
    files = os.listdir(source_path)

    for file_name in files:
        file_path = os.path.join(source_path, file_name)
        target_path = os.path.join(ln_folder, file_name)

        if os.path.islink(target_path):
            logging.info(f"已存在软链接，跳过：{file_name} -> {target_path}")
            continue
        try:
            os.symlink(file_path, target_path)
            logging.info(f"创建软链接：{file_name} -> {target_path}")
        except Exception as e:
            logging.error(f"创建软链接失败：{file_name} -> {target_path}，错误：{e}")

def get_obs(work_path):
    obs_list = []
    command = f'ls -d {os.path.join(work_path, "??????????/")}'
    file = os.popen(command).readlines()
    for obs in file:
        obs_name = os.path.basename(obs.strip().rstrip('/'))
        obs_list.append(obs_name)
    return obs_list

def write2file(info, file_path):
    """
    将info写入file_path
    """
    with open(file_path, 'a') as file:
        file.write(info)

def build_nicerl3_lc(obs, pmin, pmax, timebin):
    """
    构建 `nicerl3-lc` 命令字符串，并根据输入生成唯一的 `suffix`。

    参数：
        obs (str): 观测标识符。
        pmin (int): 能量的最小范围。
        pmax (int): 能量的最大范围。
        timebin (float): 时间分辨率（秒）。
    
    返回：
        str: 构造完成的命令字符串。
    """
    # 根据参数生成唯一的 suffix
    pi_min = int(100 * pmin)
    pi_max = int(100 * pmax)
    if str(timebin)=='1':
        if pi_max==1500:
            suffix = "bkg_1s"
        elif pi_max==1000 and pi_min==50:
            suffix = "1s"
        else:
            suffix = f"pi_{pmin}-{pmax}_1s"
    elif str(timebin)=='0.0001220703125':
        suffix = "2E-13"
    elif str(timebin)=='0.125':
        suffix = "2E-3"

    ifok_file = f'ni{obs}mpu7_sr{suffix}.lc'
    cmd = f"nicerl3-lc {obs} pirange={pi_min}-{pi_max} timebin={timebin} suffix={suffix} clobber=YES"
    return cmd,ifok_file


def build_nicerl3_spect(obs, grouptype,bkgmodeltype,gtifile = None ):
    """
    构建 `nicerl3-spect` 命令字符串，并根据输入生成唯一的 `suffix`。

    参数：
        obs (str): 观测标识符。
        grouptype (str): 是否最优并道。默认分组为 grouptype=optmin groupscale=10，这是最佳的 Kaastra 和 Bleeker 分箱，附加要求为每个分组箱 10 个计数。您可以使用 groupscale 参数指定不同的最小计数。
        bkgmodeltype (str):3c50 。“ufa”文件可能被认为是可选的，因为 3c50 背景模型需要它，但 SCORPEON 或太空天气背景模型不需要它。
    
    返回：
        str: 构造完成的命令字符串。
    """
    #  cmd=f'nicerl3-spect {obs} clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix={suffix}  bkgmodeltype=3c50 '
    # 根据参数生成唯一的 suffix
    bkgmodeltype = '3c50'
    if gtifile != None:
        print('待完善')
        # cmd = f'nicerl3-spect {obs} phafile={phafile} gtifile={gtifile} bkgmodeltype=3c50 clobber=yes'
    elif grouptype=='optmin':
        suffix = "optmin"
        cmd=f'nicerl3-spect {obs} clobber=YES grouptype={grouptype} chatter=3 groupscale=10 suffix={suffix}  bkgmodeltype={bkgmodeltype} '
    elif grouptype=='NONE':
        suffix = "nogrp"
        cmd=f'nicerl3-spect {obs} clobber=YES grouptype={grouptype} suffix={suffix}  bkgmodeltype={bkgmodeltype} '
        
    ifok_file = f'ni{obs}mpu7_sr{suffix}.pha'
    return cmd,ifok_file

def print_log(*args, sep=' ', end='\n', file=None, flush=False, log_files=None, masks=None):
    """
    个人喜欢的能储存日志以及高亮打印的函数。
    默认日志存储在当前工作目录下的 logall.txt。
    mask 的内容会以红色高亮显示。
    """

    if log_files is None:
        log_files = ['logall.txt']
    elif log_files == 'time':
        log_files = ['logall.txt', 'logruntime.txt']

    message = sep.join(str(arg) for arg in args) + end
    log_contents = [message]

    for file_path in log_files:
        write2file(''.join(log_contents), file_path)

    if masks is None:
        print(message, end='', file=sys.stdout, flush=flush)
    else:
        masks = str(masks)  # 确保 masks 为字符串
        if masks in message:
            # 将包含 masks 的部分打印为红色
            highlighted_message = message.replace(
                masks, f"\033[91m{masks}\033[0m"
            )  # 91m 为红色
            print(highlighted_message, end='', file=sys.stdout, flush=flush)
        else:
            print(message, end='', file=sys.stdout, flush=flush)

def format_execution_time(execution_time):
    if execution_time < 60:
        return f"{execution_time:.1f}秒"
    elif execution_time < 3600:
        minutes = execution_time // 60
        seconds = execution_time % 60
        return f"{minutes}分钟{seconds:.1f}秒"
    elif execution_time < 86400:
        hours = execution_time // 3600
        minutes = (execution_time % 3600) // 60
        return f"{hours}小时{minutes}分钟"
    else:
        days = execution_time // 86400
        hours = (execution_time % 86400) // 3600
        minutes = (execution_time % 3600) // 60
        return f"{days}天{hours}小时{minutes}分钟"

def time_consum(start_time):
    end_time = time.time()
    execution_time = end_time - start_time
    execution_time_str = format_execution_time(execution_time)
    print_log("\n" + "运行时间为： " + execution_time_str + "\n\n",masks={execution_time_str},log_files = 'time')
    time.sleep(2)

def run_cmd(cmd, ifok=None, dir=None, start_time=None,logtotxt = None):
    """
    #很好用的run cmd,一共需要三个函数,执行命令并记录到日志文件。

    Args:
        cmd (str): 要执行的命令。
        ifok (str, optional): 文件路径。如果文件存在，则跳过命令。默认为None。
        dir (str, optional): 命令应该执行的目录。默认为None。
        start_time (float, optional): 用于测量时间消耗的开始时间。默认为None。
    """
    cwd = os.getcwd()
    if start_time == None:
        start_time = time.time()
    if ifok is None or not os.path.isfile(ifok):
        if dir:
            os.chdir(dir)
        path = os.getcwd()
        print_log(f'程序运行路径为:{path}',masks = path, log_files='time')
        print_log(f'运行命令：{cmd}', masks=cmd ,log_files='time')
        time.sleep(1)  
        try:
            output = subprocess.getoutput(cmd)
            if logtotxt == None:
                print(output)
            else:
                print_log(output)
            with open(os.path.join(cwd, 'cmd.sh'), 'a') as file:
                file.write(f'#程序运行路径为:{path}  \n')
                file.write(cmd + '\n')
            
            time_consum(start_time)
        except Exception as e:
            print_log(f"Error executing command: {e}")
        finally:
            if ifok:
                if not ifok.endswith('png'):
                    os.system('touch ' + ifok)
        os.chdir(cwd)
    else:
        print_log(f'File {ifok} exists. Skipping command: {cmd}\n')

def print_my_info():
    print();print_log(f' NICER DATA REDUCTION PIPELINE '.center(80, '-')); print()
    print_log(' Author: Long Peng '.center(80, ' '));print()
    print_log(f' See web page: https://www.plxray.cn/ '.center(80, ' '),masks='https://www.plxray.cn/'); print()
    print_log(' Script created on June 2024'.center(80, ' '));print()
    print_log('--'.center(80, '-'));print()
    time.sleep(3)


def create_dir(directories):
    """
    directories是一个列表,包含了所需创建的文件夹的绝对路径
    """
    for directory in directories:
        # Check if the directory already exists, and create it if it doesn't
        if not os.path.exists(directory):
            os.makedirs(directory)
            print(f"Created directory: {directory}")
        else:
            print(f"Directory already exists: {directory}")


#预览图
import pathlib,glob
def nicerql(eventfile, extra_nicerql_args=[]):
    """
    生成psrpipe诊断图,检查数据是否存在明显的问题。
    需要eventfile,假设orb文件和mkf文件与event文件在同一文件夹中。
    参数:
    eventfile -- 事件文件的路径。将从中提取ObsID以获取NICER文件。
    extra_nicerql_args -- 传递给nicerql脚本的额外参数列表。
    """
    # 获取事件文件的父目录
    parent_folder = str(pathlib.Path(eventfile).parent)
    print(parent_folder)
    # 查找同一目录下的.orb文件
    orbfiles = glob.glob(parent_folder + '/*.orb')
    print(orbfiles)
    # 查找同一目录下的.mkf文件
    mkffiles = glob.glob(parent_folder + '/*.mkf*')
    print(mkffiles)
    # 检查.orb和.mkf文件的数量是否正确
    if len(orbfiles) != 1 or len(mkffiles) != 1:
        raise ValueError("orb/mkf文件数量不正确，请确保它们与事件文件在同一目录下！")

    # 日志文件路径
    logfile = parent_folder + '/nicerql.log'
    print(f'现在正在为 {eventfile} 运行 nicerql:')
    with open(logfile, 'w') as logtextfile:
        # 构建nicerql命令并执行
        cmd = ['nicerql.py', eventfile, '--orb', orbfiles[0], '--mkf', mkffiles[0]] + extra_nicerql_args


    # 查找生成的.png文件并移动到父目录
    png_files = glob.glob('*evt*png')
    for png_file in png_files:
        subprocess.run(['mv', png_file, parent_folder + '/'])


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

    #print("MJD{}转换成日期为：{}年{}月{}日".format(mjd,Y, M, D))
    return Y , M , D