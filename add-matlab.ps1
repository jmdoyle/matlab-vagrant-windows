"Installing MATLAB"
(Get-Content c:\tmp\matlab-installer-options.ini).replace("fileInstallationKey=XXXXX-XXXXX-XXXXX-XXXXX", "fileInstallationKey=$(Get-Content c:\tmp\secrets\file-installation-key.txt)") | Set-Content c:\tmp\matlab-installer-options.ini
c:\vagrant\installers\_temp_matlab_R2018a_win64\bin\win64\setup.exe -inputFile c:\tmp\matlab-installer-options.ini | Out-Null
"Finished installing MATLAB"
