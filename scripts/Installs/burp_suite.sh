#!/bin/bash
# Description: Burp Suite Professional
echo "What is you password for Burp suite zip"
read password
cd /opt/
pip install gdown
gdown https://drive.google.com/uc?id=1k9KQNQmhZpobruPbjK5jFSfzrG95-bWt&export=download
yes
sleep 20

#wget www.weirdatfirst.com/files/burp.zip
path=$(pwd)
unzip -P "${password}" ${path}/burp.zip
rm ${path}/burp.zip
java -jar ${path}/burp.jar
