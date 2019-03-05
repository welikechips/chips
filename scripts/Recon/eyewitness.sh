#!/bin/bash
# Description: Eyewitness - Take screenshots from file
if [ ! -d "/root/tools/EyeWitness" ]; then
    echo "Make sure you run EyeWitness Install"
else
    read -r -p 'Please enter full path of file ' filename
    eyewitness -f $filename --web
fi