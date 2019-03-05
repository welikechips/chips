#!/usr/bin/env bash
# Description: Sublist3r - Run
echo "Right now the output file will be in /root/scans/"
echo "What domain do you want to scan?"
read domain

path="/root/scans/$domain/"
mkdir -p $path
python /root/tools/Sublist3r/sublist3r.py -d $domain -o $path/sublist.txt




