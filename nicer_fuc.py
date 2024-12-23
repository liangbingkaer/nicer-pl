import os,sys,time
import logging
import subprocess
cwd = os.getcwd()

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

def create_symlinks(folder_path, ln_folder='ln'):
    """
    创建指向指定文件夹中所有文件的软链接。
    :param folder_path: 源文件夹路径
    :param ln_folder: 软链接目标文件夹路径，默认为当前工作目录下的'ln'文件夹
    """
    # 设置日志记录
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

    # 构建软链接目标文件夹路径
    ln_folder = os.path.join(os.getcwd(), ln_folder)
    os.makedirs(ln_folder, exist_ok=True)

    # 获取指定文件夹中的所有文件
    files = os.listdir(folder_path)

    # 遍历文件列表
    for file_name in files:
        # 构建文件的完整路径
        file_path = os.path.join(folder_path, file_name)

        # 构建软链接的目标文件路径
        target_path = os.path.join(ln_folder, file_name)

        # 检查目标路径是否已存在软链接
        if os.path.islink(target_path):
            logging.info(f"已存在软链接，跳过：{file_name} -> {target_path}")
            continue
        
        # 创建软链接
        try:
            os.symlink(file_path, target_path)
            logging.info(f"创建软链接：{file_name} -> {target_path}")
        except Exception as e:
            logging.error(f"创建软链接失败：{file_name} -> {target_path}，错误：{e}")

#个人喜欢的log型以及有颜色的打印
def print_log(*args, sep=' ', end='\n', file=None, flush=False, log_files=None,masks =None):
    global cwd
    if log_files is None:
        log_files = ['logall.txt']

    # 构建消息字符串
    message = sep.join(str(arg) for arg in args) + end
    # 写入日志文件
    log_contents = [message]
    for log_filename in log_files:
        log_path = os.path.join(cwd, log_filename)
        with open(log_path, 'a') as f:
            f.writelines(log_contents)

    # 打印到标准输出
    if masks is None:
        masks = []
        print(message, end='', file=sys.stdout, flush=flush)
    else:
        masks = [str(mask) for mask in masks]  # 将所有 mask 转换为字符串
        colored_output = ""
        in_mask = False
        for char in message:
            if any(char in mask for mask in masks):
                if not in_mask:
                    colored_output += "\033[31m"  # 31m 是红色
                    in_mask = True
            else:
                if in_mask:
                    colored_output += "\033[0m"  # 0m 是恢复默认颜色
                    in_mask = False
            colored_output += char
        if in_mask:
            colored_output += "\033[0m"  # 确保最后一组 mask 之后恢复默认颜色
        print(colored_output)

#很好用的run_cmd,一共需要三个函数
#计算运行时间
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

def time_log(info, log_files=None,masks =None):
    if log_files is None:
        if masks ==  None:
            print_log(info, log_files=['logruntime.txt', 'logall.txt'])
        else:
            print_log(info, log_files=['logruntime.txt', 'logall.txt'],masks = masks)

def time_consum(start_time):
    end_time = time.time()
    execution_time = end_time - start_time
    execution_time_str = format_execution_time(execution_time)
    time_log("\n" + "运行时间为： " + execution_time_str + "\n")
    time_log('')
    time.sleep(2)

def run_cmd(cmd, ifok=None, dir=None, start_time=None,logtotxt = None):
    """
    执行命令并记录到日志文件。

    Args:
        cmd (str): 要执行的命令。
        ifok (str, optional): 文件路径。如果文件存在，则跳过命令。默认为None。
        dir (str, optional): 命令应该执行的目录。默认为None。
        start_time (float, optional): 用于测量时间消耗的开始时间。默认为None。
    """
    if start_time == None:
        start_time = time.time()
    if ifok is None or not os.path.isfile(ifok):
        if dir:
            os.chdir(dir)
        path = os.getcwd()
        logging.info(f'程序运行路径为:{path}')
        print_log(cmd, masks=cmd)
        time.sleep(1)  # Assuming this sleep is intentional
        try:
            output = subprocess.getoutput(cmd)
            if logtotxt == None:
                logging.info(output)
            else:
                print_log(output)
            with open(os.path.join(cwd, 'cmd.log'), 'a') as file:
                file.write(cmd + '\n')
            

            time_consum(start_time)
        except Exception as e:
            logging.error(f"Error executing command: {e}")
        finally:
            if ifok:
                if not ifok.endswith('png'):
                    os.system('touch ' + ifok)
    else:
        logging.info(f'File {ifok} exists. Skipping command: {cmd}')

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

import math
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