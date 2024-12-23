import os

#sw00035323034xpcw3posr_corr.lc  sw00035323034xwtw2stsr_corr.lc
ra, dec ,source = 287.816917, 0.584969  ,   ' aql x-1 '

cwd= os.getcwd()
obs=os.popen('ls -d ???????????/').readlines()  #比nicer多一个数
#obs = ['00035323034']
src_name='aqlx-1'
for obs in obs:
    obs=obs[0:11]
    print(obs)

    cmd=f'xrtpipeline indir={cwd}/{obs} outdir=./output/{obs} steminputs=sw{obs} srcra={ra} srcdec={dec}'
    print(cmd)
    os.system(cmd)


