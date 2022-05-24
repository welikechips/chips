#!/bin/bash
# Description: DirSearch - Run Multiple URLS

if [ ! -d "/root/tools/dirsearch" ]; then
    echo "Make sure you run dirsearch Install"
else
    path=$(pwd)
    read -r -p 'Please enter full path of file ' file
    mkdir -p $path/dirsearch
    cd dirsearch
    touch tracker.txt
    name=$(cat "$file")
    for i in $name; do
            counter=$((counter+1))
            echo $i
            echo "$i is in file $counter" >> tracker.txt 
            dirsearch -u $i -w /usr/share/wordlists/dirb/big.txt -f -t 100 -r -e php,html,js,txt,asp,aspx -x 403,302 -o $counter --format=json
    done
fi
