#!/bin/bash

public_ip_raw=$1
server_name=$2
public_ip=$(echo "${public_ip_raw}" | sed "s/\./\\\\\\\\\\\\./g")

sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-default.conf \
| sed 's|<REPLACE_PUBLIC_IP_ADDRESS>|'"${public_ip}"'|g' \
| sed 's|<REPLACE_SERVER_NAME>|'"${server_name}"'|g' > /etc/apache2/sites-enabled/000-default.conf
