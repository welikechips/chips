#!/bin/bash

sudo su
cd ~
git clone https://github.com/welikechips/chips ~/chips
ln -s ~/chips/menu.py /usr/local/bin/chips
echo "2" | sudo ~/chips/scripts/Installs/bashrc.sh
~/chips/scripts/Installs/tmux.sh
