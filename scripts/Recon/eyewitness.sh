#!/bin/bash
# Description: Eyewitness - Take screenshots from file
echo "Make sure you ran the install"
read -r -p 'Please enter full path of file ' filename
eyewitness -f $filename --web