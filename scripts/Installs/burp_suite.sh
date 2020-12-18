#!/bin/bash
# Description: Burp Suite Professional
echo "What is you password for Burp suite zip"
read password
cd /opt/
sudo apt-get -y install python3-pip
pip3 install gdown
gdown https://drive.google.com/uc?id=1t8VG0HGK30Bf6cdRSC6Yv7EVj_dmzEWr
#wget www.weirdatfirst.com/files/burp.zip
path=$(pwd)
unzip -P "${password}" ${path}/burp.zip
#removing until fix properly
#rm ${path}/burp.zip
java -jar ${path}/burp.jar
