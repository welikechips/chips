#!/bin/bash
# Description: Pycharm
pycharm=/pycharm-community-2018.2.4/bin/pycharm.sh
cd /opt/
pip install gdown
gdown https://drive.google.com/open?id=1P8t9QTLw8681IUTqwC-QHtVzUJ0Jg-VT
path=$(pwd)
tar -xf pycharm-community-2018.2.4.tar.gz
cd /usr/bin/
ln -s $path$pycharm pycharm
rm /opt/pycharm-community-2018.2.4.tar.gz



