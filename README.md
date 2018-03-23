# MATLAB on Windows using Vagrant

## Pre-requisites

You must have a secrets folder containing the following files:

* `file-installation-key.txt` - this contains the 20 digit key in the format XXXXX-XXXXX-XXXXX-XXXXX
* `license.lic` - this is the license key downloaded from MathWorks specifically for the machine you are installing on. For Windows you can get your Host ID by running a Command Prompt then typing ```vol c:```. As long as you use the same vagrant box each time then this value won't change.

You must have an installers folder containing the latest installer files. This part is convoluted if you don't already have these files.

1. Download the latest installer for Windows via your administration portal - for example, `matlab_R2018a_win64.exe`.
2. This is an archive that can be inflated either by running it on a Windows machine otherwise `unzip matlab_R2018a_win64.exe`.
3. The extracted folder `_temp_matlab_R2018a_win64` must now be placed in the `installers` folder.
4. Unfortunately it doesn't stop there. You now must make a fake install of MATLAB somewhere to allow a download of the files for MATLAB and whatever toolboxes you want. These files will appear in your `Downloads/MathWorks` folder. Copy that folder to the `installers` folder too.

So, the installers folder would have the following:

* `_temp_matlab_R2018a_win64/`
* `MathWorks/`
* `matlab_R2018a_win64.exe`

## Run

To run:

    vagrant up

Note that this will take at least 15 minutes due to the really long time it takes to install MATLAB and toolboxes.
Additional toolboxes can be installed by adding them to `matlab-installer-options.ini` but you will need to ensure the files were downloaded in your fake install.

## Notes

* The activation would work better if you were to use MATLAB License Manager.
* MathWorks advised me that they are currently looking into officially supporting MATLAB on Docker and providing guidance on how to implement it.  I'm hoping that that would have the additional benefit of making any automated install easier.