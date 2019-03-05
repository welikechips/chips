#!/usr/bin/env bash
# Description: EyeWitness - Install
mkdir -p /root/tools/
cd /root/tools
git clone https://github.com/FortyNorthSecurity/EyeWitness
cd /root/tools/EyeWitness/setup
sh setup.sh -y