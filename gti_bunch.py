import os
import pathlib
from astropy.io import fits
from nicer_fuc import *

def GTI_bunching(eventfile, gap, gtifile_path):
    """
    脚本用途:
    这是一个用于处理 GTI 的脚本。 使得短时间间隔的连续 GTI 能够合并在一起。这是为了对单个 GTI 进行加速度搜索！
    更多参考：https://stackoverflow.com/questions/3704918/python-way-to-restart-a-for-loop-similar-to-continue-for-while-loops
    """
    parent_folder = str(pathlib.Path(eventfile).parent)
    # 读取事件文件中的 GTI 数据 (一般为第 4 个 HDU 包含 GTI 数据，更早的数据处理应该是在第3个)
    gtis = list(fits.open(eventfile)[3].data)
    N = len(gtis)  # 初始 GTI 的数量

    should_restart = True
    # 使用循环合并时间间隔小于 gap 的 GTI
    while should_restart:  # 如果发现可以合并的 GTI 对，则重新开始循环
        should_restart = False
        for i in range(N - 1):  # 遍历相邻 GTIs
            # 判断两个相邻 GTI 是否可以合并
            if (gtis[i + 1][0] - gtis[i][1]) <= gap:
                # 合并两个 GTI
                new_start = gtis[i][0]  # 新 GTI 的开始时间
                new_end = gtis[i + 1][1]  # 新 GTI 的结束时间
                del gtis[i]  # 删除原始 GTI[i]
                del gtis[i]  # 删除原始 GTI[i+1]，因为 i 的索引已经变化
                gtis.insert(i, (new_start, new_end))  # 插入合并后的新 GTI
                N = len(gtis)  # 更新 GTI 数量
                should_restart = True  # 标记需要重新开始循环
                break  # 重新开始循环
            else:
                N = len(gtis)  # 更新 GTI 数量
                continue

    # 写入合并后的 GTI 时间到文本文件
    gtitxt = open(parent_folder + '/bunchedgtis.txt', 'w')
    for i in range(len(gtis)):
        gtitxt.write(str(gtis[i][0]) + ' ' + str(gtis[i][1]) + '\n')
    gtitxt.close()

    # 准备创建新的 GTI 文件所需的列和头文件路径，默认在nicersoft的安装位置
    path = '/home/pl/soft/nicersoft/NICERsoft-master/data/'
    gti_col_file = path + 'gti_columns.txt'
    gti_header_file = path+ 'gti_header.txt'

    # 使用 ftcreate 工具生成新的 GTI 文件
    ftcreate_cmd = f'ftcreate {gti_col_file} {parent_folder}/bunchedgtis.txt {gtifile_path} headfile={gti_header_file} extname="GTI" clobber=yes'
    print(ftcreate_cmd)
    run_cmd(ftcreate_cmd)

path_evt = '/home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126_0mpu7_cl.evt'
gtifile_path = '/home/pl/work/python-workspance/nicer-pl/1050080126/bunched.gti'
GTI_bunching(path_evt, 4, gtifile_path)