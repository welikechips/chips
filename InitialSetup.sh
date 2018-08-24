#!/bin/bash

# Initial update
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

apt-get update
apt-get -y full-upgrade

#Install VMWare tools
apt -y install open-vm-tools-desktop fuse

#Start 2nd stage
chmod +x ~/kali-setup/2nd.sh
echo "@reboot sleep 60 && ~/kali-setup/2nd.sh" > /var/spool/cron/crontabs/root
reboot
