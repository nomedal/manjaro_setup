#!/bin/bash 

if [ -a backup/	 ]
	then
		rm /root/.bashrc

		cp backup/.bashrc-root /root/.bashrc
fi

exec bash
