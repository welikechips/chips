#!/bin/bash
# Description: Burp Suite Professional
echo "What is you password for Burp suite zip"
read password
cd /opt/
sudo apt-get -y install python-pip
pip install gdown
gdown https://drive.google.com/uc?id=1leH1chDMeFP7TTg2G7dHd_Xx0axY7WqJ
#wget www.weirdatfirst.com/files/burp.zip
path=$(pwd)
unzip -P "${password}" ${path}/burp.zip
rm ${path}/burp.zip
java -jar ${path}/burp.jar
