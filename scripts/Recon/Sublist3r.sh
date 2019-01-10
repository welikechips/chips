#!/usr/bin/env bash
echo "Right now the output file will be in /root/scans/"
echo "What domain do you want to scan?"

read domain
mkdir -p /root/scans/$domain
python /root/tools/Sublist3r/sublist3r.py -d $domain -o /root/scans/$domain/sublist.txt



