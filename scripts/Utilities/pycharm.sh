#!/bin/bash
pycharm=/pycharm-community-2018.2.4/bin/pycharm.sh
cd /opt/
wget www.weirdatfirst.com/files/tools/pycharm-community-2018.2.4.tar.gz
path=$(pwd)
tar -xf pycharm-community-2018.2.4.tar.gz
cd /usr/bin/
ln -s $path$pycharm pycharm
rm /opt/pycharm-community-2018.2.4.tar.gz



