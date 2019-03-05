#!/bin/bash
# Description: DirSearch - Run Multiple URLS
path=$(pwd)
read -r -p 'Please enter full path of file ' file
mkdir $path/dirsearch
name=$(cat "$file")
for i in $name; do
        echo https://$i
        dirsearch -u https://$i -w /usr/share/wordlists/dirb/big.txt -f -t 100 -r -e php,html,js,txt,asp,aspx -x 403 --simple-report=dirsearch/$i
done