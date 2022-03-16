#!/bin/bash
# Description: Burp Suite Professional
echo "What is you password for Burp suite zip"
read password
cd /opt/
sudo apt-get -y install python3-pip
pip3 install gdown
gdown https://drive.google.com/uc?id=1iyKNwf7cLSji4APRVzr6cAz0Ju-LHod9
#wget www.weirdatfirst.com/files/burp.zip
path=$(pwd)
unzip -P "${password}" ${path}/burp.zip
#removing until fix properly
#rm ${path}/burp.zip
sh ${path}/burpsuite_pro_linux_v2022_2_3.sh
