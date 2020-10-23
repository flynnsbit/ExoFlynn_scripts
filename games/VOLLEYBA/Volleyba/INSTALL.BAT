Echo off
Cls
Echo VOLLEYBALL SIMULATOR
Echo (c) 1988/89 by RAINBOW ARTS(r) - TIME WARP(r)
Echo ÿ
Echo Utility to Copy  VOLLEYBALL SIMULATOR to your harddisk.
Echo ÿ
Echo Invoke it with: INSTALL C: if your harddisk is C:
Echo                 INSTALL D: if your harddisk is D:ÿ
Echo ÿ
Echo A new path named \VOLLEY is created.
Echo To start VOLLEYBALL SIMULATOR from your harddisk type:
Echo ÿ
Echo C:                  (for harddisk C:)
Echo CD \VOLLEY
Echo VOLLEY
Echo ÿ
Echo Hit any key to start installation, ^C to abort.
Echo ÿ
Pause
%1
cd \
md \volley
md \volley\data
md \volley\team
A:
Echo ÿ
Echo Insert Disk 1 in drive A: 
Pause
Copy *.* %1\volley
Copy data %1\volley\data
Copy team %1\volley\team
Echo ÿ
Echo Insert Disk 2 in drive A: 
Pause
Copy *.* %1\volley
Copy data %1\volley\data
Copy team %1\volley\team
%1
CD \volley
Del \volley\install.bat
Del \volley\volley.bat
Echo ÿ
Echo Installation complete !


