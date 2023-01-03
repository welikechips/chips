#!/bin/bash
# Description: NMAP results to html
read -r -p "What do you want to NMAP?" ip
command="nmap $ip -oX scan.xml --stylesheet /root/chips/nmap-bootstrap.xsl && xsltproc -o scan.html /root/chips/nmap-bootstrap.xsl scan.xml"
echo "$command was copied to clipboard"
echo $command | xclip -sel clip
