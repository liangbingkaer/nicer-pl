import os
import pathlib
from nicer_fuc import *

refframe ='ICRS'  #ICRS for DE405, FK5 for DE200，ICRS是一个基于河外射电源的天球参考系，而FK5是一个以地球为基础的参考系
cwd = os.getcwd()
obs_list = get_obs(cwd)
for obs in obs_list:
    #/home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126_0mpu7_cl.evt
    clean_evt = os.path.join(cwd,obs,f'ni{obs}_0mpu7_cl.evt')
    barycorr(clean_evt,refframe)