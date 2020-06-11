# .bashrc setup script

## Description:

This script is used to initially setup your .bashrc file to include usefull commands. 
This includes: 
1. multipull - Will sequentially go through all subdirectories one level down from where you are located, and git pull those directories.

2. home - Will change directory to where your home directory is, e.g. `/home/user/` or `~`.


## Installation:
	```
	chmod +x bashrc_setup.sh

	./bashrc_setup.sh
	```

## Uninstallation:
`./uninstall.sh`

## Note:

Except for the first time, refrain from using the installation process without using the uninstallation process first. It's a simple dumb script, and using the installation process repeatitly will destroy overwrite and therefore destroy the backupcode, and also bloat the `.bashrc` code.