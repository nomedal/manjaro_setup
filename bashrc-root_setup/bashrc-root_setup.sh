mkdir -p backup	# if dir doens't exist
chmod +x uninstall-root.sh 

cp /root/.bashrc backup/.bashrc-root

echo 'alias multipull="find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"' >> /root/.bashrc # exec git pull on all subdirs 
echo 'alias home="cd /home/nome"' >> /root/.bashrc

exec bash
