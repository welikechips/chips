#!/bin/bash
# Description: Masscan
mkdir -p /tools/
cd tools
sudo apt-get install git gcc make libpcap-dev -y
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make