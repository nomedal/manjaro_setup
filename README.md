# Manjaro KDE setup

## Table of Contents

  * [Introduction](#introduction)
  * [Setup](#setup)
    * [Manjaro](#manjaro)
    * [Git](#git)
  	* [Dropbox](#dropbox)
  	* [NordVPN](#nordvpn)
  	* [Remmina](#remmina)
  	* [Wondershaper](#wondershaper)
  	* [Virtual manager](#virtual-manager)
  * [Package management](#package-management)

## Introduction
Temporary repository since my [WIKI](https://nomedal.github.io/) crashed, but is now up and running.
This is now my "main" wiki for manjaro setup, since its easier to update on the fly. The other wiki is more a "aesthetic" project. 

Includes setup descriptions, files, notes and configurations regarding setting up manjaro.

For easier navigation you could also use `CTRL-F` searching.

## Setup:

### Manjaro:
#### Fix freeze on boot 
* Download KDE, burn image to USB. 
* Boot and configure boot by pressing `e` on boot option. 
* Locate `quiet` in config under `setparams`.
* Replace `quiet` with `acpi_osi='Windows 2018'` Hit `F10` to start booting.

### Clonezilla
#### Making a backup
* Use the live boot USB device which you used for Manjaro installation. 
* Backup harddrive or drive to use for Manjaro backup. 
* Launch live boot manjaro from USB.
* Open terminal `ctrl + alt + t` and type `sudo clonezilla`. 
* Follow the setup, note that the folder you choose to backup your manjaro to, need to be in that media's `root`.

#### Troubleshooting:

##### How to find disks, where they are located and what type they are:
	```
	sudo fdisk -l
	
	df

	sudo parted -l
	```
##### GTP and MBR mismatch error	
If you get the error saying that you have two concurrent partitioning tables working the disk you want to backup, or save to, you have to fix this first. The thing is that if the drive that you want to backup have been used for anything else except linux in the past, there may be some remnants of other tables still on it. There is a command that you can run, if you are fairly certain the GPT remnants are nothing that you really need that fixes this problem instantly, but beware that it deletes this data.

NB! BE VERY CARFUL NOT TO GET A TYPO HERE. Double check, and double check again that you have typed corretly. `sdx` in the code below referes to whatever your disk is called, e.g. `sda`. 

	```
	sgdisk -z /dev/sdx
	```

### Git
https://git-scm.com/book/en/v2/GitHub-Account-Setup-and-Configuration
https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
https://help.github.com/en/github/using-git/which-remote-url-should-i-use
#### User setup
	```
	git config --global user.name "USERNAME"
	git config --global user.email "EMAIL_FOR_GITUSER"
	```

### Dropbox:
#### Installation
https://www.dropbox.com/install?os=lnx
#### Configuration
* Locate dropbox.py.
* If you don't have this, download it from https://www.dropbox.com/install?os=lnx. 
* It doesn't matter where you put this file, but it should be located in your `~` dir. 
* This way you can run it from your default dir.

#### Usage:
##### Example
	```
	python dropbox.py status

	python dropbox.py start
	```

### NordVPN
#### Install
https://wiki.archlinux.org/index.php/NordVPN

### Remmina
#### Installation
	```
	sudo pacman -Syu remmina freerdp
	```
#### Usage
	```
	sudo remmina &
	```

use:
	```
	ctrl + c
	```
to remove process and errors in terminal.
#### Configuration
* To add an existing .rdp file, press the three horizontal lines in the top right corner to access settings. 
* Press 'import', locate your file and press 'import'. 
* Your connection will be added to the list, press it. 
* Fill inn form. 
* Note that on remote desktop services in windows, the login username often contains the domain aswell, on the form: 'uio\USERNAME'. 
* This is less common in linux, and we don't use the '\' here neither. So username and domain are seperate. 

#### Note
Remmina refuses to launch from application manager and or without sudo from terminal.

### Wondershaper
#### Installation
	```
	git clone https://aur.archlinux.org/wondershaper-git.git

	cd wonder-git/

	makepkg-sri
	```
#### Usage
##### Limit download/upload speed
	```
	sudo wondershaper -a ADAPTER -d DOWNLOADLIMIT -u UPLOADLIMIT
	```

Note that speed is in 'kbps'.
##### Clear download/upload limit
	```
	sudo wondershaper -c ADAPTER
	```
##### Example:
	```
	sudo wondershaper -a wlp4s0 -d 20000
	
	sudo wondershaper -c -a wlp4s0
	```

### Virtual manager
#### Installation
	```
	sudo pacman -S qemu libvirt ovmf virt-manager
	```

### TinyFPGA B-series programmer
#### Installation
	Make sure to use python3 and also pip3 for this. 
	```
	pip install tinyfpga
	```
#### Source:
	https://github.com/tinyfpga/TinyFPGA-B-Series/tree/master/programmer

## Package management
In general when you want to install something you have to download a package and build them. First make a directory for your builds e.g -/builds in your home directory.
Cd into this directory, then:

	```
	git clone https://aur.archlinux.org/PACKAGENAME

	cd PACKAGENAME/

	makepgk -sri
	```
### Sources
https://wiki.archlinux.org/index.php/Arch_User_Repository
https://wiki.manjaro.org/index.php?title=Arch_User_Repository

## .bashrc
Useful aliases:
* [normal user](https://github.com/nomedal/manjaro_setup/tree/master/bashrc_setup)
* [superuser](https://github.com/nomedal/manjaro_setup/tree/master/bashrc-root_setup)
