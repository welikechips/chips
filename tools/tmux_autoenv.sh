#!/bin/bash
echo "Make sure you source this file before using"
read -r -p "What is the IP address? " ip_address

server_name_found=$(grep -F "${ip_address} " /etc/hosts | awk '{ print $2 }')

tmux setenv IP ${ip_address}
tmux setenv WD $(pwd)
export IP=${ip_address}
export WD=$(pwd)
if [ ! -z "$server_name_found" ]
then
    echo "${server_name_found} found with ip address: ${ip_address}"
fi

read -r -p "Update hosts file? [y/N] " response

case "$response" in
    [yY][eE][sS]|[yY])
        read -r -p "What is the name of the box? " server_name
        sudo echo -e "${IP}\t${server_name}" >> /etc/hosts
        echo "Current IP Address is ${IP}, server name is ${server_name} and current working directory is ${WD}"
        ;;
    *)
        echo "Current IP Address is ${IP} and current working directory is ${WD}"
    ;;
esac