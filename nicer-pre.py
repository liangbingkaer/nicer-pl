# 导入库
import os
import shutil
import time
import matplotlib.pyplot as plt
from nicer_fuc import *

# 原始数据存放位置,建立软链接
folder_path = "/media/pl/EXTERNAL_USB/work/nicer/test/4u1636-536"
filetag = 'NICERV3,3c50'
#filetag = 'NICERV5'

cwd = os.getcwd()
ln_dir = os.path.join(cwd,'ln')
# work_dir = os.path.join(cwd,'work')
work_dir = cwd

create_dir([ln_dir]) 
create_symlinks(folder_path)

#预处理
print_log(f'程序开始：{cwd}')
os.chdir(ln_dir)
file=os.popen('ls -d ??????????/').readlines()
for obs in file:
    obs=obs[0:10]
    print_log(f'\nobs = {obs}',masks = obs)
    input_obs = os.path.join(ln_dir,obs)
    output_obs = os.path.join(work_dir,obs)
    os.makedirs(output_obs, exist_ok=True)

#     cl_name = 'ni'+obs+'_0mpu7_cl.evt'
#     cl_gz_name = 'ni'+obs+'_0mpu7_cl.evt.gz'
#     cl_path = os.path.join(output_obs,cl_name)

# ##可能需要判断.mkf和.mkf.gz
#     time_start = time.time()
#     command = f"nicerl2 indir={input_obs} incremental=NO filtcolumns={filetag} clobber=YES cldir={output_obs} "
#     if not os.path.isfile(cl_path):
#         run_cmd(command,start_time=time_start,logtotxt = 'yes')
#         for file_tag in ['mkf','orb']:
#             mkf_file = os.path.join(input_obs,'auxil',f'ni{obs}.{file_tag}')
#             mkf_gz_file = os.path.join(input_obs,'auxil',f'ni{obs}.{file_tag}.gz')
#             if os.path.exists(mkf_file):
#                 shutil.copy(mkf_file, output_obs)
#             else:
#                 cmd = f'gunzip -f -d {mkf_gz_file}'
#                 os.system(cmd)
#                 shutil.copy(mkf_file, output_obs)

#     bkg_png = os.path.join(output_obs,f'ni{obs}_bkg.png')
#     if not os.path.isfile(bkg_png):
#         from astropy.table import Table
#         orbfile = glob.glob(output_obs + '/*.orb')
#         mkffile = glob.glob(output_obs + '/*.mkf*')
#         print(f'mkffile:{mkffile}')

#         mktable = Table.read(mkffile[0])
#         if 'FPM_RATIO_REJ_COUNT' not in mktable.colnames:
#             print("FPM_RATIO_REJ_COUNT列不存在")
#         else:
#             extra_nicerql_args = ['--save','--emin','0.5','--emax','10']
#             cmd = f'nicerql.py {cl_path} --orb {orbfile[0]} --mkf {mkffile[0]} --save --emin 0.5 --emax 10'
#             run_cmd(cmd,logtotxt = 'yes')
#             png_files = glob.glob(f'ni*{obs}*png')
#             print(png_files)
#             for i in range(len(png_files)):
#                 subprocess.run(['mv',png_files[i],output_obs+'/'])

