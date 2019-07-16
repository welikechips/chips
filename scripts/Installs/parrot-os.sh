#!/bin/bash
# Description: Install Mate Desktop and parrot OS like Theme
cd

apt-get update && apt-get upgrade -y
apt-get install mate-core mate-desktop-environment-extra mate-desktop-environment-extras
wget http://deb.parrotsec.org/parrot/pool/main/p/parrot-themes/parrot-themes_3.0+parrot2_all.deb

apt-get install ./parrot-themes_3.0+parrot2_all.deb 

read -p "Make sure you have the mounted Google Drive (Press enter to continue)"

mkdir ~/scripts
cp /mnt/hgfs/Google_Drive/mate-settings/scripts/* ~/scripts/
cp /mnt/hgfs/Google_Drive/mate-settings/layouts/* /usr/share/mate-panel/layouts/
