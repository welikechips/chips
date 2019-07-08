#!/bin/bash
# Description: Kali Updates
# Initial update
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

apt-get update
apt-get -y full-upgrade

#Install VMWare tools
apt -y install open-vm-tools-desktop fuse

reboot
