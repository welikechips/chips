#!/bin/bash
# Description: Sublist3r - Scans domain for subdomains
working=$(pwd)
if [ ! -d "/root/tools/Sublist3r" ]; then
    echo "Make sure you run Sublist3r Install"
else
    echo "Working directory is $working"
    echo "What domain do you want to scan?"
    read domain
    path=$working/sublist3r
    mkdir -p $path
    python /root/tools/Sublist3r/sublist3r.py -d $domain -o $path/output.txt
fi