# manjaro_setup

## Introduction
	Temporary repository since my WIKI crashed.
	Setup descriptions, files, notes and configurations regarding setting up manjaro

## Setup:

### Manjaro:
#### Fix freeze on boot 
	Download KDE, burn image to USB. Boot and configure boot by pressing 'E' on boot option. Locate "quiet" in config under "setparams". Replace "quiet" with "acpi_osi='Windows 2018'" Hit 'F10' to start booting.

### Git
	https://git-scm.com/book/en/v2/GitHub-Account-Setup-and-Configuration
### Dropbox:
#### Installation
	https://www.dropbox.com/install?os=lnx
#### Configuration
	Locate dropbox.python, if you don't have this, download it from https://www.dropbox.com/install?os=lnx. It doesn't matter where you put this file, but it should be located in your '~' dir as you can run it from your default location this way.
#### Usage:
##### Example
	'''
	python dropbox.py status

	python dropbox.py start
	'''

### Sublime text:
#### Installation
	'''
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
	
	sudo pacman -Syu sublime-text
	'''
#### Usage:
##### Example
	'''
	subl sometext.py
	'''

### Kvantum:
#### Installation
	gcc: pacman -Sy gcc

### Slack:
#### Installation
	'''
	sudo pacman -Syu

	sudo pacman -S git base-devel

	git clone https://aur.archlinux.org/slack-desktop.git

	cd slack-desktop/

	makepkg -sri
	'''

### Discord:
#### Install
	'''
	sudo pacman -S discord 
	'''
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
	makepgk --skippgpcheck
	'''

## Package management
	In general when you want to install something you have to download a package and build them. A tidy way to do this, is to first make a directory for your builds e.g -/builds in your home directory and cd into this dir. Then:
		'''
		git clone https://aur.archlinux.org/PACKAGENAME

		cd PACKAGENAME/

		makepgk -sri
		'''
### Sources
	https://wiki.archlinux.org/index.php/Arch_User_Repository
