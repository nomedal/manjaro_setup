# .bashrc setup script

## Description:

This script is used to initially setup your .bashrc file in the root directory to include usefull commands.
This is if you are mainly using superuser in day to day activities and want the same shortscuts as you have as a normal user. 
This includes: 
1. multipull - Will sequentially go through all subdirectories one level down from where you are located, and git pull those directories.

2. home - Will change directory to where your normal users home directory is, e.g. `/home/user/`.


## Installation:
	```
	chmod +x bashrc_setup.sh

	sudo ./bashrc_setup.sh
	
	exit
	```

## Uninstallation:
	```
	sudo ./uninstall.sh

	exit
	```

## Note:

Refrain from using the installation process without using the uninstallation process first. It's a simple dumb script, and using the installation process repeatitly will destroy overwrite and therefore destroy the backupcode, and also bloat the `.bashrc` code.
