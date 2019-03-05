#!/bin/bash
# Description: EyeWitness
mkdir -p /root/tools/
cd /root/tools
git clone https://github.com/FortyNorthSecurity/EyeWitness
cd /root/tools/EyeWitness/setup
sh setup.sh -y
cd /usr/bin/
ln -s /root/tools/EyeWitness/EyeWitness.py eyewitness