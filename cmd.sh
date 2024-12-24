#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl2 indir=/home/pl/work/python-workspance/nicer-pl/ln/1050080126 incremental=NO filtcolumns=NICERV3,3c50 clobber=YES cldir=/home/pl/work/python-workspance/nicer-pl/1050080126 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl2 indir=/home/pl/work/python-workspance/nicer-pl/ln/1050080128 incremental=NO filtcolumns=NICERV3,3c50 clobber=YES cldir=/home/pl/work/python-workspance/nicer-pl/1050080128 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerql.py /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128_0mpu7_cl.evt --orb /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.orb --mkf /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf --save --emin 0.5 --emax 10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerql.py /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126_0mpu7_cl.evt --orb /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.orb --mkf /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf --save --emin 0.5 --emax 10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080126 pirange=50-1000 timebin=1 suffix=1s clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080128 pirange=50-1000 timebin=1 suffix=1s clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080126 pirange=1200-1500 timebin=1 suffix=bkg_1s clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080128 pirange=1200-1500 timebin=1 suffix=bkg_1s clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080126 pirange=50-1000 timebin=0.0001220703125 suffix=2E-13 clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080128 pirange=50-1000 timebin=0.0001220703125 suffix=2E-13 clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=optmin  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080128 pirange=50-1000 timebin=0.0001220703125 suffix=2E-13 clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080128 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=optmin  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080126 pirange=50-1000 timebin=0.125 suffix=2E-3 clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-lc 1050080128 pirange=50-1000 timebin=0.125 suffix=2E-3 clobber=YES
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 clobber=YES grouptype=NONE suffix=nogrp  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080128 clobber=YES grouptype=NONE suffix=nogrp  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg_.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.gti "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=bkg_1050080126  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.gti "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=optmin  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=optmin  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.gti "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= inf))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029991.47967182).and.(TIME <= 115030007.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115030007.47967182).and.(TIME <= 115030023.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115030023.47967182).and.(TIME <= 115030039.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b20_1050080126.pha "((TIME >= 115030039.47967182).and.(TIME <= 115030055.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b21_1050080126.pha "((TIME >= 115030055.47967182).and.(TIME <= 115030071.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b22_1050080126.pha "((TIME >= 115030071.47967182).and.(TIME <= 115030087.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b23_1050080126.pha "((TIME >= 115030087.47967182).and.(TIME <= 115030103.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b24_1050080126.pha "((TIME >= 115030103.47967182).and.(TIME <= 115030119.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti "((TIME >= 118409473.56852968).and.(TIME <= 118409537.56852968))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080128 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=optmin  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b1_1050080128.pha "((TIME >= 118409323.65387298).and.(TIME <= 118409331.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b2_1050080128.pha "((TIME >= 118409331.65387298).and.(TIME <= 118409333.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b3_1050080128.pha "((TIME >= 118409333.65387298).and.(TIME <= 118409335.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b4_1050080128.pha "((TIME >= 118409335.65387298).and.(TIME <= 118409339.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b5_1050080128.pha "((TIME >= 118409339.65387298).and.(TIME <= 118409347.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b6_1050080128.pha "((TIME >= 118409347.65387298).and.(TIME <= 118409355.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b7_1050080128.pha "((TIME >= 118409355.65387298).and.(TIME <= 118409363.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b8_1050080128.pha "((TIME >= 118409363.65387298).and.(TIME <= 118409379.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b9_1050080128.pha "((TIME >= 118409379.65387298).and.(TIME <= 118409395.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b10_1050080128.pha "((TIME >= 118409395.65387298).and.(TIME <= 118409411.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b11_1050080128.pha "((TIME >= 118409411.65387298).and.(TIME <= 118409427.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b12_1050080128.pha "((TIME >= 118409427.65387298).and.(TIME <= 118409443.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 clobber=YES grouptype=optmin chatter=3 groupscale=10 suffix=optmin  bkgmodeltype=3c50 
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 phafile=/home/pl/work/python-workspance/nicer-pl/1050080126/bkg_1050080126.pha gtifile=/home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti bkgmodeltype=3c50 clobber=yes grouptype=optmin chatter=3 groupscale=10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029991.47967182).and.(TIME <= 115030007.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115030007.47967182).and.(TIME <= 115030023.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115030023.47967182).and.(TIME <= 115030039.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b20_1050080126.pha "((TIME >= 115030039.47967182).and.(TIME <= 115030055.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b21_1050080126.pha "((TIME >= 115030055.47967182).and.(TIME <= 115030071.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b22_1050080126.pha "((TIME >= 115030071.47967182).and.(TIME <= 115030087.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b23_1050080126.pha "((TIME >= 115030087.47967182).and.(TIME <= 115030103.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b24_1050080126.pha "((TIME >= 115030103.47967182).and.(TIME <= 115030119.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti "((TIME >= 118409473.56852968).and.(TIME <= 118409537.56852968))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080128 phafile=/home/pl/work/python-workspance/nicer-pl/1050080128/bkg_1050080128.pha gtifile=/home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti bkgmodeltype=3c50 clobber=yes grouptype=optmin chatter=3 groupscale=10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b1_1050080128.pha "((TIME >= 118409323.65387298).and.(TIME <= 118409331.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b2_1050080128.pha "((TIME >= 118409331.65387298).and.(TIME <= 118409333.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b3_1050080128.pha "((TIME >= 118409333.65387298).and.(TIME <= 118409335.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b4_1050080128.pha "((TIME >= 118409335.65387298).and.(TIME <= 118409339.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b5_1050080128.pha "((TIME >= 118409339.65387298).and.(TIME <= 118409347.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b6_1050080128.pha "((TIME >= 118409347.65387298).and.(TIME <= 118409355.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b7_1050080128.pha "((TIME >= 118409355.65387298).and.(TIME <= 118409363.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b8_1050080128.pha "((TIME >= 118409363.65387298).and.(TIME <= 118409379.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b9_1050080128.pha "((TIME >= 118409379.65387298).and.(TIME <= 118409395.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b10_1050080128.pha "((TIME >= 118409395.65387298).and.(TIME <= 118409411.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b11_1050080128.pha "((TIME >= 118409411.65387298).and.(TIME <= 118409427.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b12_1050080128.pha "((TIME >= 118409427.65387298).and.(TIME <= 118409443.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029991.47967182).and.(TIME <= 115030007.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115030007.47967182).and.(TIME <= 115030023.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115030023.47967182).and.(TIME <= 115030039.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b20_1050080126.pha "((TIME >= 115030039.47967182).and.(TIME <= 115030055.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b21_1050080126.pha "((TIME >= 115030055.47967182).and.(TIME <= 115030071.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b22_1050080126.pha "((TIME >= 115030071.47967182).and.(TIME <= 115030087.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b23_1050080126.pha "((TIME >= 115030087.47967182).and.(TIME <= 115030103.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b24_1050080126.pha "((TIME >= 115030103.47967182).and.(TIME <= 115030119.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti "((TIME >= 118409473.56852968).and.(TIME <= 118409537.56852968))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b1_1050080128.pha "((TIME >= 118409323.65387298).and.(TIME <= 118409331.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b2_1050080128.pha "((TIME >= 118409331.65387298).and.(TIME <= 118409333.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b3_1050080128.pha "((TIME >= 118409333.65387298).and.(TIME <= 118409335.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b4_1050080128.pha "((TIME >= 118409335.65387298).and.(TIME <= 118409339.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b5_1050080128.pha "((TIME >= 118409339.65387298).and.(TIME <= 118409347.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b6_1050080128.pha "((TIME >= 118409347.65387298).and.(TIME <= 118409355.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b7_1050080128.pha "((TIME >= 118409355.65387298).and.(TIME <= 118409363.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b8_1050080128.pha "((TIME >= 118409363.65387298).and.(TIME <= 118409379.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b9_1050080128.pha "((TIME >= 118409379.65387298).and.(TIME <= 118409395.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029991.47967182).and.(TIME <= 115030007.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115030007.47967182).and.(TIME <= 115030023.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115030023.47967182).and.(TIME <= 115030039.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b20_1050080126.pha "((TIME >= 115030039.47967182).and.(TIME <= 115030055.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b21_1050080126.pha "((TIME >= 115030055.47967182).and.(TIME <= 115030071.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b22_1050080126.pha "((TIME >= 115030071.47967182).and.(TIME <= 115030087.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b23_1050080126.pha "((TIME >= 115030087.47967182).and.(TIME <= 115030103.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b24_1050080126.pha "((TIME >= 115030103.47967182).and.(TIME <= 115030119.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti "((TIME >= 118409473.56852968).and.(TIME <= 118409537.56852968))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b1_1050080128.pha "((TIME >= 118409323.65387298).and.(TIME <= 118409331.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b2_1050080128.pha "((TIME >= 118409331.65387298).and.(TIME <= 118409333.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b3_1050080128.pha "((TIME >= 118409333.65387298).and.(TIME <= 118409335.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b4_1050080128.pha "((TIME >= 118409335.65387298).and.(TIME <= 118409339.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b5_1050080128.pha "((TIME >= 118409339.65387298).and.(TIME <= 118409347.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b6_1050080128.pha "((TIME >= 118409347.65387298).and.(TIME <= 118409355.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b7_1050080128.pha "((TIME >= 118409355.65387298).and.(TIME <= 118409363.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b8_1050080128.pha "((TIME >= 118409363.65387298).and.(TIME <= 118409379.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b9_1050080128.pha "((TIME >= 118409379.65387298).and.(TIME <= 118409395.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b10_1050080128.pha "((TIME >= 118409395.65387298).and.(TIME <= 118409411.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b11_1050080128.pha "((TIME >= 118409411.65387298).and.(TIME <= 118409427.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b12_1050080128.pha "((TIME >= 118409427.65387298).and.(TIME <= 118409443.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 phafile=/home/pl/work/python-workspance/nicer-pl/1050080126/bkg_1050080126.pha gtifile=/home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti bkgmodeltype=3c50 clobber=yes grouptype=optmin chatter=3 groupscale=10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029991.47967182).and.(TIME <= 115030007.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115030007.47967182).and.(TIME <= 115030023.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115030023.47967182).and.(TIME <= 115030039.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029739.73575105).and.(TIME <= 115029803.73575105))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029869.47967182).and.(TIME <= 115029885.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029885.47967182).and.(TIME <= 115029889.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029889.47967182).and.(TIME <= 115029891.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029891.47967182).and.(TIME <= 115029895.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029895.47967182).and.(TIME <= 115029899.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029899.47967182).and.(TIME <= 115029903.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029903.47967182).and.(TIME <= 115029911.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029911.47967182).and.(TIME <= 115029919.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029919.47967182).and.(TIME <= 115029927.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029927.47967182).and.(TIME <= 115029935.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029935.47967182).and.(TIME <= 115029943.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029943.47967182).and.(TIME <= 115029951.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029951.47967182).and.(TIME <= 115029959.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029959.47967182).and.(TIME <= 115029967.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029967.47967182).and.(TIME <= 115029983.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029983.47967182).and.(TIME <= 115029991.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029991.47967182).and.(TIME <= 115030007.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115030007.47967182).and.(TIME <= 115030023.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115030023.47967182).and.(TIME <= 115030039.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b20_1050080126.pha "((TIME >= 115030039.47967182).and.(TIME <= 115030055.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b21_1050080126.pha "((TIME >= 115030055.47967182).and.(TIME <= 115030071.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b22_1050080126.pha "((TIME >= 115030071.47967182).and.(TIME <= 115030087.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b23_1050080126.pha "((TIME >= 115030087.47967182).and.(TIME <= 115030103.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b24_1050080126.pha "((TIME >= 115030103.47967182).and.(TIME <= 115030119.47967182))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti "((TIME >= 118409473.56852968).and.(TIME <= 118409537.56852968))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b1_1050080128.pha "((TIME >= 118409323.65387298).and.(TIME <= 118409331.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b2_1050080128.pha "((TIME >= 118409331.65387298).and.(TIME <= 118409332.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b3_1050080128.pha "((TIME >= 118409332.65387298).and.(TIME <= 118409333.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b4_1050080128.pha "((TIME >= 118409333.65387298).and.(TIME <= 118409334.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b5_1050080128.pha "((TIME >= 118409334.65387298).and.(TIME <= 118409336.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b6_1050080128.pha "((TIME >= 118409336.65387298).and.(TIME <= 118409340.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b7_1050080128.pha "((TIME >= 118409340.65387298).and.(TIME <= 118409344.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b8_1050080128.pha "((TIME >= 118409344.65387298).and.(TIME <= 118409352.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b9_1050080128.pha "((TIME >= 118409352.65387298).and.(TIME <= 118409360.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b10_1050080128.pha "((TIME >= 118409360.65387298).and.(TIME <= 118409368.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b11_1050080128.pha "((TIME >= 118409368.65387298).and.(TIME <= 118409376.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b12_1050080128.pha "((TIME >= 118409376.65387298).and.(TIME <= 118409384.65387298))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti "((TIME >= 115029634.34752662).and.(TIME <= 115029698.34752662))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080126 phafile=/home/pl/work/python-workspance/nicer-pl/1050080126/bkg_1050080126.pha gtifile=/home/pl/work/python-workspance/nicer-pl/1050080126/bkg.gti bkgmodeltype=3c50 clobber=yes grouptype=optmin chatter=3 groupscale=10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b1_1050080126.pha "((TIME >= 115029815.57438211).and.(TIME <= 115029823.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b2_1050080126.pha "((TIME >= 115029823.57438211).and.(TIME <= 115029831.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b3_1050080126.pha "((TIME >= 115029831.57438211).and.(TIME <= 115029839.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b4_1050080126.pha "((TIME >= 115029839.57438211).and.(TIME <= 115029847.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b5_1050080126.pha "((TIME >= 115029847.57438211).and.(TIME <= 115029855.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b6_1050080126.pha "((TIME >= 115029855.57438211).and.(TIME <= 115029863.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b7_1050080126.pha "((TIME >= 115029863.57438211).and.(TIME <= 115029871.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b8_1050080126.pha "((TIME >= 115029871.57438211).and.(TIME <= 115029879.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b9_1050080126.pha "((TIME >= 115029879.57438211).and.(TIME <= 115029887.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b10_1050080126.pha "((TIME >= 115029887.57438211).and.(TIME <= 115029889.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b11_1050080126.pha "((TIME >= 115029889.57438211).and.(TIME <= 115029891.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b12_1050080126.pha "((TIME >= 115029891.57438211).and.(TIME <= 115029893.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b13_1050080126.pha "((TIME >= 115029893.57438211).and.(TIME <= 115029895.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b14_1050080126.pha "((TIME >= 115029895.57438211).and.(TIME <= 115029897.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b15_1050080126.pha "((TIME >= 115029897.57438211).and.(TIME <= 115029899.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b16_1050080126.pha "((TIME >= 115029899.57438211).and.(TIME <= 115029903.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b17_1050080126.pha "((TIME >= 115029903.57438211).and.(TIME <= 115029907.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b18_1050080126.pha "((TIME >= 115029907.57438211).and.(TIME <= 115029911.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b19_1050080126.pha "((TIME >= 115029911.57438211).and.(TIME <= 115029915.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b20_1050080126.pha "((TIME >= 115029915.57438211).and.(TIME <= 115029919.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b21_1050080126.pha "((TIME >= 115029919.57438211).and.(TIME <= 115029923.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b22_1050080126.pha "((TIME >= 115029923.57438211).and.(TIME <= 115029927.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b23_1050080126.pha "((TIME >= 115029927.57438211).and.(TIME <= 115029935.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b24_1050080126.pha "((TIME >= 115029935.57438211).and.(TIME <= 115029943.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b25_1050080126.pha "((TIME >= 115029943.57438211).and.(TIME <= 115029951.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b26_1050080126.pha "((TIME >= 115029951.57438211).and.(TIME <= 115029959.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b27_1050080126.pha "((TIME >= 115029959.57438211).and.(TIME <= 115029967.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b28_1050080126.pha "((TIME >= 115029967.57438211).and.(TIME <= 115029975.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b29_1050080126.pha "((TIME >= 115029975.57438211).and.(TIME <= 115029983.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b30_1050080126.pha "((TIME >= 115029983.57438211).and.(TIME <= 115029991.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b31_1050080126.pha "((TIME >= 115029991.57438211).and.(TIME <= 115029999.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b32_1050080126.pha "((TIME >= 115029999.57438211).and.(TIME <= 115030007.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b33_1050080126.pha "((TIME >= 115030007.57438211).and.(TIME <= 115030015.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b34_1050080126.pha "((TIME >= 115030015.57438211).and.(TIME <= 115030023.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b35_1050080126.pha "((TIME >= 115030023.57438211).and.(TIME <= 115030031.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b36_1050080126.pha "((TIME >= 115030031.57438211).and.(TIME <= 115030039.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b37_1050080126.pha "((TIME >= 115030039.57438211).and.(TIME <= 115030047.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b38_1050080126.pha "((TIME >= 115030047.57438211).and.(TIME <= 115030055.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b39_1050080126.pha "((TIME >= 115030055.57438211).and.(TIME <= 115030063.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b40_1050080126.pha "((TIME >= 115030063.57438211).and.(TIME <= 115030071.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b41_1050080126.pha "((TIME >= 115030071.57438211).and.(TIME <= 115030079.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b42_1050080126.pha "((TIME >= 115030079.57438211).and.(TIME <= 115030087.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b43_1050080126.pha "((TIME >= 115030087.57438211).and.(TIME <= 115030095.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b44_1050080126.pha "((TIME >= 115030095.57438211).and.(TIME <= 115030103.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b45_1050080126.pha "((TIME >= 115030103.57438211).and.(TIME <= 115030111.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b46_1050080126.pha "((TIME >= 115030111.57438211).and.(TIME <= 115030119.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b47_1050080126.pha "((TIME >= 115030119.57438211).and.(TIME <= 115030127.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b48_1050080126.pha "((TIME >= 115030127.57438211).and.(TIME <= 115030135.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b49_1050080126.pha "((TIME >= 115030135.57438211).and.(TIME <= 115030143.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b50_1050080126.pha "((TIME >= 115030143.57438211).and.(TIME <= 115030151.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b51_1050080126.pha "((TIME >= 115030151.57438211).and.(TIME <= 115030159.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b52_1050080126.pha "((TIME >= 115030159.57438211).and.(TIME <= 115030167.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b53_1050080126.pha "((TIME >= 115030167.57438211).and.(TIME <= 115030175.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b54_1050080126.pha "((TIME >= 115030175.57438211).and.(TIME <= 115030183.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b55_1050080126.pha "((TIME >= 115030183.57438211).and.(TIME <= 115030191.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b56_1050080126.pha "((TIME >= 115030191.57438211).and.(TIME <= 115030199.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b57_1050080126.pha "((TIME >= 115030199.57438211).and.(TIME <= 115030207.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b58_1050080126.pha "((TIME >= 115030207.57438211).and.(TIME <= 115030215.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b59_1050080126.pha "((TIME >= 115030215.57438211).and.(TIME <= 115030223.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b60_1050080126.pha "((TIME >= 115030223.57438211).and.(TIME <= 115030231.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b61_1050080126.pha "((TIME >= 115030231.57438211).and.(TIME <= 115030239.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b62_1050080126.pha "((TIME >= 115030239.57438211).and.(TIME <= 115030247.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b63_1050080126.pha "((TIME >= 115030247.57438211).and.(TIME <= 115030255.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080126/ni1050080126.mkf /home/pl/work/python-workspance/nicer-pl/1050080126/b64_1050080126.pha "((TIME >= 115030255.57438211).and.(TIME <= 115030263.57438211))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti "((TIME >= 118409859.56565996).and.(TIME <= 118409923.56565996))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
nicerl3-spect 1050080128 phafile=/home/pl/work/python-workspance/nicer-pl/1050080128/bkg_1050080128.pha gtifile=/home/pl/work/python-workspance/nicer-pl/1050080128/bkg.gti bkgmodeltype=3c50 clobber=yes grouptype=optmin chatter=3 groupscale=10
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b1_1050080128.pha "((TIME >= 118409292.98516162).and.(TIME <= 118409308.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b2_1050080128.pha "((TIME >= 118409308.98516162).and.(TIME <= 118409324.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b3_1050080128.pha "((TIME >= 118409324.98516162).and.(TIME <= 118409332.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b4_1050080128.pha "((TIME >= 118409332.98516162).and.(TIME <= 118409334.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b5_1050080128.pha "((TIME >= 118409334.98516162).and.(TIME <= 118409338.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b6_1050080128.pha "((TIME >= 118409338.98516162).and.(TIME <= 118409346.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b7_1050080128.pha "((TIME >= 118409346.98516162).and.(TIME <= 118409354.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b8_1050080128.pha "((TIME >= 118409354.98516162).and.(TIME <= 118409362.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b9_1050080128.pha "((TIME >= 118409362.98516162).and.(TIME <= 118409378.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b10_1050080128.pha "((TIME >= 118409378.98516162).and.(TIME <= 118409394.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b11_1050080128.pha "((TIME >= 118409394.98516162).and.(TIME <= 118409410.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b12_1050080128.pha "((TIME >= 118409410.98516162).and.(TIME <= 118409426.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b13_1050080128.pha "((TIME >= 118409426.98516162).and.(TIME <= 118409442.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b14_1050080128.pha "((TIME >= 118409442.98516162).and.(TIME <= 118409458.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b15_1050080128.pha "((TIME >= 118409458.98516162).and.(TIME <= 118409474.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b16_1050080128.pha "((TIME >= 118409474.98516162).and.(TIME <= 118409490.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b17_1050080128.pha "((TIME >= 118409490.98516162).and.(TIME <= 118409506.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b18_1050080128.pha "((TIME >= 118409506.98516162).and.(TIME <= 118409522.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b19_1050080128.pha "((TIME >= 118409522.98516162).and.(TIME <= 118409538.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b20_1050080128.pha "((TIME >= 118409538.98516162).and.(TIME <= 118409554.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b21_1050080128.pha "((TIME >= 118409554.98516162).and.(TIME <= 118409570.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b22_1050080128.pha "((TIME >= 118409570.98516162).and.(TIME <= 118409586.98516162))" anything anything TIME no clobber=yes
#程序运行路径为:/home/pl/work/python-workspance/nicer-pl  
maketime /home/pl/work/python-workspance/nicer-pl/1050080128/ni1050080128.mkf /home/pl/work/python-workspance/nicer-pl/1050080128/b23_1050080128.pha "((TIME >= 118409586.98516162).and.(TIME <= 118409602.98516162))" anything anything TIME no clobber=yes
