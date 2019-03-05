#!/bin/bash
# Description: Eyewitness - Take screenshots from file
if [ ! -d "/root/tools/EyeWitness" ]; then
    echo "Make sure you run EyeWitness Install"
else
    echo "Make sure you ran the install"
    read -r -p 'Please enter full path of file ' filename
    eyewitness -f $filename --web
fi