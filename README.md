# manjaro_setup

## Introduction:
	Temporary repository since my WIKI crashed.
	Setup descriptions, files, notes and configurations regarding setting up manjaro

## Programs:
	dropbox: 
		https://www.dropbox.com/install?os=lnx

	sublime text:
		```
		 curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
		- echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
		- sudo pacman -Syu sublime-text
		```

	kvantum:
		- gcc: pacman -Sy gcc