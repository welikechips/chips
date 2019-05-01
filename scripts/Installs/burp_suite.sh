#!/bin/bash
# Description: Burp Suite Professional
echo "What is you password for Burp suite zip"
read password
cd /opt/
pip install gdown
gdown https://drive.google.com/uc?id=15S7bFHZMzj9FRk6mvtV502N1F6ntPaNa
#wget www.weirdatfirst.com/files/burp.zip
path=$(pwd)
unzip -P "${password}" ${path}/burp.zip
rm ${path}/burp.zip
java -jar ${path}/burp.jar
