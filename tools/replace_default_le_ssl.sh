#!/bin/bash

private_ip=$1
server_name=$2
mimic_server=$3
sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-default-le-ssl.conf \
| sed "s/<REPLACE_PRIVATE_IP_ADDRESS>/${private_ip}/g" \
| sed "s/<REPLACE_SERVER_NAME>/${server_name}/g" \
| sed "s/<REPLACE_MIMIC_SERVER_NAME>/${mimic_server}/g" 
