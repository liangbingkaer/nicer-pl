import os
import subprocess
import pathlib
from tqdm import tqdm
from matplotlib.backends.backend_pdf import PdfPages
import peakutils
import matplotlib.pyplot as plt
from astropy.io import fits
from nicer_fuc import *

def efsearch(eventfile, n_segments, dper, nphase, nbint, nper, dres, outfile_root, plot_efsearch):
    """
    执行 FTOOLS 的 efsearch！

    eventfile - 事件文件的路径。将从中提取 ObsID，用于 NICER 文件。
    n_segments - 将周期折叠搜索分成的段数
    dper - 用于折叠的周期值；输入表示试验周期范围的中心
    nphase - 折叠光变曲线中的相位数；"INDEF" 使用默认值
    nbint - 分析中每个区间使用的新箱数
    nper - 搜索进行的周期数
    dres - 周期分辨率是搜索中两个连续周期之间的间隔
           "INDEF" 使用区间内傅里叶分辨率的一半作为默认值
    outfile_root - 结果文件名的前缀
    plot_efsearch - 是否绘制 efsearch 的结果；'yes' 或 'no'；输入 "exit" 以继续绘制下一个图
    """

    efsearch_cmd = f'efsearch {eventfile} window=- sepoch=INDEF dper={dper} nphase={nphase} nbint={nbint} nper={nper} dres={dres} outfile={outfile_root} outfiletype=2 plot={plot_efsearch}'
    parent_folder = str(pathlib.Path(eventfile).parent)
    run_cmd(efsearch_cmd,dir = parent_folder,logtotxt='yes')

    subprocess.run(['mv', outfile_root + '.fes', parent_folder + '/' + outfile_root + '.fes'])

    efsearch_results = fits.open(parent_folder + '/' + outfile_root + '.fes')
    efsearch_plot = parent_folder + '/' + outfile_root + '.pdf'

    with PdfPages(efsearch_plot) as pdf:
        for i in tqdm(range(1, len(efsearch_results))):
            T_start = efsearch_results[i].header['TSTARTI'] + efsearch_results[i].header['TSTARTF']
            T_stop = efsearch_results[i].header['TSTOPI'] + efsearch_results[i].header['TSTOPF']
            T_zeroref = efsearch_results[i].header['TIMEZERI'] + efsearch_results[i].header['TIMEZERF']

            ### 从 efsearch 结果中提取周期、卡方（及误差）值
            period = efsearch_results[i].data['PERIOD']
            chisqrd1 = efsearch_results[i].data['CHISQRD1']
            error1 = efsearch_results[i].data['ERROR1']

            ### 首先在图中找到峰值
            peak_indices = peakutils.indexes(chisqrd1, thres=0.2, min_dist=0.0001)

            ### 绘制卡方与周期的关系图以及相应的高斯拟合
            plt.errorbar(x=period, y=chisqrd1, yerr=error1, fmt='x')
            plt.title('TSTART: ' + str((T_start - T_zeroref) * 86400) + ' ; TSTOP: ' + str((T_stop - T_zeroref) * 86400))
            plt.xlabel('Period (s)', fontsize=12)
            plt.ylabel('chi-squared', fontsize=12)
            pdf.savefig()
            plt.close()

cl_path = '/home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126_0mpu7_cl.evt'
n_segments = 1
dper = 1/8.461949e-6
nphase = 20
nper = 128
dres = 1
plot_efsearch = "yes"

T = fits.open(cl_path)[3].data['STOP'][-1] - fits.open(cl_path)[3].data['START'][0]

outfile_root = '1050080126' + '_' + str(n_segments) + 'segs_' + str(nper)
nbint = int((T/(dper/nphase))/n_segments)

efsearch(cl_path,n_segments,dper,nphase,nbint,nper,dres,outfile_root,plot_efsearch)