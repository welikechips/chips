#!/bin/bash
# Description: Masscan-AllPorts - Scans all ports with Masscan
path=$(pwd)
filename=$path/targets.txt
i=0

if test -f $filename; then
    echo "Found targets.txt"
else
    echo " No file named targets.txt in current directory"
    read -r -p 'Please enter full path of file with targets. ' filename
fi


read -r -p "Is this a cloud server? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
        while read p; do
            echo "Scanning" $p
            masscan $p -p0-65535 --max-rate 1000000 -oX scan$i.xml
            i=$[i+1]
            sleep 60
        done < $filename
        ;;
    *)
        while read p; do
            echo "Scanning" $p
            masscan $p -p0-65535 -oX scan$i.xml
            i=$[i+1]
            sleep 60
        done < $filename
         ;;
esac