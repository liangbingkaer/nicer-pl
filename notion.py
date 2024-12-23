# -*- coding: utf-8 -*-
"""
Created on December 2nd 2024
@author: Long Peng
@web page: https://www.plxray.cn/

use eg:
"""

#小注释
"""

"""


import os, sys, shutil, time, datetime, argparse
from swift import *
# def main(indir,outdir,obsobject,pc_binsize,wt_binsize,pilow,pihigh,pcrmf,wtrmf,spec_binsize):
#     """
#     Main function to run the script.
#     """ 
if 1:
    indir = os.getcwd()
    outdir = './output_pipeline'
    obsobject = 'aql x-1'
    pc_binsize = 16
    wt_binsize = 1
    pilow = 20
    pihigh = 1000



    print();print(f' SWIFT XRT DATA REDUCTION PIPELINE '.center(80, '-')); print()
    print(' Author: Long Peng '.center(80, ' '));print()
    print(' See web page: https://www.plxray.cn/ '.center(80, ' ')); print()
    print(' Script created on December 2024'.center(60, ' '));print()
    print('--'.center(80, '-'));print()
    time.sleep(2)
    print(' Checking requirements '.center(80, '-'));print()
    if_requirements_satisfied, (src, back) = check_requirements()
    if if_requirements_satisfied:
        print('  All requirements sactified.\n')
        print(f'  Find region file {src} and {back}.\n')
    else:
        exit(1)
    result_directory = outdir
    check_and_create_result_directory(result_directory)

    log_path = './log'
    if os.path.exists(log_path):
        shutil.rmtree(log_path)
        os.makedirs(log_path)
        print('  Logfile path exits, previous log files are deleted.\n')
    else:
        os.makedirs(log_path)
        print(f"  Logfile directory {log_path} created.\n")

    data_directory = indir
    observation_ids, total_observations = get_observation_ids(data_directory)
    print(f' \033[1;33m {observation_ids} \033[0m.')

    ra, dec = get_object_coordinates(obsobject,src)
    src_ra = f"{ra:.3f}"
    src_dec = f"{dec:.3f}"
    print(f'  \033[1;33m ra = {src_ra} dec = {src_dec} for {obsobject} \033[0m.\n')
    time.sleep(2)

    dt = datetime.datetime.now()
    print(' INFORMATION '.center(80, '-'))
    print(f'''    
    Current time: \033[1;33m{dt.strftime('%Y-%m-%d %H:%M:%S')}\033[0m.
    
    Get object name \033[1;33m{obsobject}\033[0m.
    Find {total_observations} observations in {data_directory}.    
    Source position: \033[1;33mRA={src_ra} DEC={src_dec}\033[0m.
    Using region files: \033[1;33m{src} & {back}\033[0m to extract lightcurve & spectrum.
    ''')

    print('--'.center(80, '-'));print()

    # if not confirm('  Are these parameters right?'):
    #     exit(1)    
    
    # print()
    # print('--'.center(60, '-'))
    # print(f'''
    # Ready to reprocess XRT data, please wait...
    # Log files located at \033[1;30m{log_path}\033[0m. 
    # \033[0;31mPlease check if there is any problem after running xrt_repro.py.\033[0m
    
    # ''')
    # print(' DATA REDUCTION '.center(60, '-'))
    # print()
    # time.sleep(1)

    error_obsid_file = 'error_obsid.txt'
    processed_count = 0
    error_obsid_count = 0

    for obsid in observation_ids:
        
        time.sleep(1)
        print(f'  {obsid}  '.center(60, '-'))
        print()
        Flag = True
        pc_step_2 = True
        wt_step_2 = True
        pc_step_3 = True
        wt_step_3 = True

        step_1=run_xrtpipeline(obsid,src_ra,src_dec,data_directory,result_directory)
        
        pc_event_files, wt_event_files = find_event_files(obsid,result_directory)
        
        if step_1:
            for pcevtfile in pc_event_files or []:
                pc_step_2 = run_xrtproducts(obsid,data_directory,result_directory,pcevtfile,src,back,pc_binsize,'pc',pilow,pihigh)
                if not pc_step_2:
                    Flag = False
        
            for wtevtfile in wt_event_files or []:
                wt_step_2 = run_xrtproducts(obsid,data_directory,result_directory,wtevtfile,src,back,wt_binsize,'wt',pilow,pihigh)
                if not wt_step_2:
                    Flag = False
        
        else:
            Flag = False
               
        pc_spectrums, wt_spectrums, pc_lightcurves, wt_lightcurves = find_xrtproducts_files(obsid, result_directory)
        print(pc_spectrums, wt_spectrums, pc_lightcurves, wt_lightcurves)
                  
        # for pcspec in pc_spectrums or []:
        #     pc_step_3, pc_arf_name, pc_rmf_name = run_xrtmkarf(obsid,data_directory,result_directory,'pc',pcspec,pcrmf,wtrmf)
        #     if pc_step_3:
        #         run_grppha(obsid,result_directory,spec_binsize,pcspec,pc_rmf_name,pc_arf_name)
        #     else:
        #         Flag = False
             
        # for wtspec in wt_spectrums or []:
        #     wt_step_3, wt_arf_name, wt_rmf_name = run_xrtmkarf(obsid,data_directory,result_directory,'wt',wtspec,pcrmf,wtrmf)
        #     if wt_step_3:
        #         run_grppha(obsid,result_directory,spec_binsize,wtspec,wt_rmf_name,wt_arf_name)
        #     else:
        #         Flag = False
                    
        # if Flag is False: 
        #     error_obsid_count += 1
        #     with open(error_obsid_file, "a") as error_obsid:
        #         error_obsid.write(f"{obsid}\n")
        
        # processed_count += 1
        # print()
        # print('  Finished  '.center(60, '-'))
        # print(f"\n  Reprocessed \033[1;30m{processed_count}/{total_observations}\033[0m observations. \033[1;30m{total_observations - processed_count}\033[0m left.\n")






