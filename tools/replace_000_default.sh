#!/bin/bash

public_ip=$1
server_name=$2

sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-default.conf \
| sed 's|<REPLACE_PUBLIC_IP_ADDRESS>|$(echo "${public_ip}" | sed "s/\./\\\\\\\\\./g")|g' \
| sed 's|<REPLACE_SERVER_NAME>|'""${server_name}'|g' > /etc/apache2/sites-enabled/000-default.conf
