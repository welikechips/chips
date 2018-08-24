#!/bin/bash

# Initial update
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

apt-get update
apt-get -y full-upgrade

#Install VMWare tools
apt -y install open-vm-tools-desktop fuse

#Start 2nd stage
cd 
git clone https://github.com/tnory56/kali-setup
chmod +x /root/kali-setup/2nd.sh
echo "@reboot sleep 60 && /root/kali-setup/2nd.sh" > /var/spool/cron/crontabs/root
reboot