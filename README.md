# Manjaro KDE setup

## Table of Contents

  * [Introduction](#introduction)
  * [Setup](#setup)
    * [Manjaro](#manjaro)
    * [Git](#git)
  	* [Dropbox](#dropbox)
  	* [Sublime text](#sublime-text)
  	* [Kvantum](#kvantum)
  	* [Slack](#slack)
  	* [Discord](#discord)
  	* [Spotify](#spotify)
  	* [NordVPN](#nordvpn)
  	* [Remmina](#remmina)
  	* [Latte](#latte)
  	* [Sweet KDE](#sweet-kde)
  	* [Wondershaper](#wondershaper)
  	* [Virtual manager](#virtual-manager)
  * [Package management](#package-management)

## Introduction
Temporary repository since my WIKI crashed.
Includes setup descriptions, files, notes and configurations regarding setting up manjaro.

This page is meant to be navigated with CTRL-F searching, so do that. 

## Setup:

### Manjaro:
#### Fix freeze on boot 
* Download KDE, burn image to USB. 
* Boot and configure boot by pressing 'E' on boot option. 
* Locate "quiet" in config under "setparams".
* Replace "quiet" with "acpi_osi='Windows 2018'" Hit 'F10' to start booting.

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

### Sublime text:
#### Installation
	```
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
	
	sudo pacman -Syu sublime-text
	```
#### Usage:
##### Example
	```
	subl sometext.py
	```

### Kvantum:
#### Installation
	```
	pacman -Sy gcc
	```

Or use application manager pacman

### Slack:
#### Installation
	```
	sudo pacman -Syu

	sudo pacman -S git base-devel

	git clone https://aur.archlinux.org/slack-desktop.git

	cd slack-desktop/

	makepkg -sri
	```

### Discord:
#### Install
	```
	sudo pacman -S discord 
	```

Or use application manager pacman.
#### Sources
https://newbloghosting.com/how-to-install-discord-on-arch-linux/

### Spotify
#### Install
	'''
	git clone https://aur.archlinux.org/spotify.git
	
	cd spotify/

	makepkg -sri
	'''

If you get an key error, try:
	
	'''
	makepkg --skippgpcheck
	'''
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

### Latte
#### Installation
	```
	sudo pacman -S latte-dock
	```
#### Usage
Launch from application launcher, after restart.
#### Note
Similiarly to remmina, latte refuses to launch from terminal.

### Sweet KDE
#### Installation
https://github.com/EliverLara/Sweet.git
#### Sources
https://store.kde.org/p/1294174/

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
