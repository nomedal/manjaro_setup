mkdir -p backup	# if dir doen'st exist
chmod +x uninstall.sh 

cp ~/.bashrc backup

echo 'alias multipull="find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"' >> ~/.bashrc # exec git pull on all subdirs 
echo 'alias home="cd ~"' >> ~/.bashrc

source ~/.bashrc
