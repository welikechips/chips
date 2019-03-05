#!/bin/bash
# Description: Sublist3r - Scans domain for subdomains

if [ ! -d "/root/tools/Sublist3r" ]; then
    echo "Make sure you run Sublist3r Install"
else
    echo "Right now the output file will be in /root/scans/"
    echo "What domain do you want to scan?"
    read domain
    path="/root/scans/$domain/"
    mkdir -p $path
    python /root/tools/Sublist3r/sublist3r.py -d $domain -o $path/sublist.txt
fi