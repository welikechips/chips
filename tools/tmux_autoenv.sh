#!/bin/bash
echo "Make sure you source this file before using"
read -r -p "What is the IP address? " ip_address
tmux setenv IP ${ip_address}
tmux setenv WD $(pwd)
export IP=${ip_address}
export WD=$(pwd)
read -r -p "Update hosts file?? [y/N] " response

case "$response" in
    [yY][eE][sS]|[yY])
        read -r -p "What is the name of the box? " server_name
        sudo echo "${IP}    ${server_name}" >> /etc/hosts
        ;;
esac
echo "Current IP Address is ${IP}, server name is ${server_name} and current working directory is ${WD}"
