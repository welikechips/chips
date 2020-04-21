#!/bin/bash
# Description: Pycharm
pycharm=/pycharm-community-2019.1.3/bin/pycharm.sh
cd /opt/
apt-get install python3-pip
pip3 install gdown
gdown https://drive.google.com/uc?id=1P8t9QTLw8681IUTqwC-QHtVzUJ0Jg-VT
path=$(pwd)
tar -xf pycharm-community-2019.1.3.tar.gz
cd /usr/bin/
ln -s $path$pycharm pycharm
rm /opt/pycharm-community-2019.1.3.tar.gz



