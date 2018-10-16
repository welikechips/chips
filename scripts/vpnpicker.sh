#!/bin/bash
# VPN Picker
[ -d ~/tools ] || mkdir ~/tools
cd ~/tools && git clone https://github.com/tnory56/vpn-picker/ 
cd ~/tools/vpn-picker
sudo chmod +x setup.sh && ./setup.sh
