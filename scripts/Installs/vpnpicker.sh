#!/bin/bash
# Description: VPNpicker
[ -d ~/tools ] || mkdir ~/tools
cd ~/tools && git clone https://github.com/welikechips/vpn-picker/
cd ~/tools/vpn-picker
sudo chmod +x setup.sh && ./setup.sh

echo "What is you username for Private Internet Access"
read username
echo "What is you password for Private Internet Access"
read password

echo $username > ~/tools/vpn-picker/credentials.txt
echo $password >> ~/tools/vpn-picker/credentials.txt
