#!/bin/bash
sudo su
cd ~
apt-get update
apt-get dist-upgrade -y
apt-get install -y git tmux curl tar zip 
git clone https://github.com/welikechips/chips ~/chips
ln -s ~/chips/menu.py /usr/local/bin/chips
echo "2" | sudo ~/chips/scripts/Installs/bashrc.sh
~/chips/scripts/Installs/install-covenant.sh
~/chips/scripts/Installs/tmux.sh
tmux new -s Covenant
cd ~/Covenant/Covenant
source ~/.bashrc
dotnet run
