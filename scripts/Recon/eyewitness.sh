#!/bin/bash
# Description: Eyewitness - Take screenshots from file
path=$(pwd)
mkdir -p $path/eyewitness
if [ ! -d "/root/tools/EyeWitness" ]; then
    echo "Make sure you run EyeWitness Install"
else
    read -r -p 'Please enter full path of file ' filename
    eyewitness -f $filename --web -d $path/eyewitness/
fi