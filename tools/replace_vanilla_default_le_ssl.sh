#!/bin/bash

server_name=$1
sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-vanilla-default-le-ssl.conf \
| sed 's|<REPLACE_SERVER_NAME>|'"${server_name}"'|g' > /etc/apache2/sites-enabled/000-default-le-ssl.conf
