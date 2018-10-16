#!/bin/bash

#Make Base Directory
basedir="/root/scans/"
mkdir $basedir

#Application to be tested
echo What is the name of the test?
read test_name

#Make Directorys
mkdir -p $basedir/$test_name/screenshots
mkdir $basedir/$test_name/tmuxlogs

#Edit tmux to point to new logs
tmuxchange="$basedir$test_name/tmuxlogs"
sed -i "/my_home_path=/c\my_home_path=\"${tmuxchange}\"" ~/.tmux/plugins/tmux-logging/scripts/variables.sh

#Mount Share Drive
clear
echo "Remember to setup your share Drive in VMWARE"
read -p "Press enter to continue script"

mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other

echo "mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other" > ~/Desktop/share.sh
echo "macchanger -r eth0" >> ~/Desktop/share.sh
chmod +x ~/Desktop/share.sh

echo "#!/bin/bash" > ~/Desktop/backup.sh
echo "cp $basedir /mnt/hgfs/Google_Drive/Engagements/ -r " >> ~/Desktop/backup.sh
chmod +x ~/Desktop/backup.sh

echo "*/10 * * * * /root/Desktop/backup.sh" > /var/spool/cron/crontabs/root
echo "@reboot sleep 60 && /root/Desktop/share.sh" >> /var/spool/cron/crontabs/root
