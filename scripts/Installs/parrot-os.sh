#!/bin/bash
# Description: Install Mate Desktop and parrot OS like Theme
cd

apt-get update && apt-get upgrade -y
apt-get install mate-core mate-desktop-environment-extra mate-desktop-environment-extras
wget http://deb.parrotsec.org/parrot/pool/main/p/parrot-themes/parrot-themes_3.0+parrot2_all.deb

apt-get install ./parrot-themes_3.0+parrot2_all.deb 

mkdir ~/scripts
git clone https://github.com/welikechips/mate-settings
cd mate-settings
cp -r scripts/* ~/scripts
cp -r layouts/* /usr/share/mate-panel/layouts/
