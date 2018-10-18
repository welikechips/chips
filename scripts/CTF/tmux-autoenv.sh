#!/bin/bash
echo "What is the name of the box?"
read server_name
echo "What is the IP address?"
read IP
tmux setenv IP ${IP}
tmux setenv WD $(pwd)
export IP=${IP}
export WD=$(pwd)
sudo echo "${IP}    ${server_name}" >> /etc/hosts
echo "Current IP Address is ${IP}, server name is ${server_name} and current working directory is ${WD}"
