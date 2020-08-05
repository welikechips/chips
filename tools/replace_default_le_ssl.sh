#!/bin/bash

sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-default-le-ssl.conf \
| sed "s/<REPLACE_PRIVATE_IP_ADDRESS>/$1/g" \
| sed "s/<REPLACE_SERVER_NAME>/$2/g" \
| sed "s/<REPLACE_MIMIC_SERVER_NAME>/$3/g" > /etc/apache2/sites-available/000-default-le-ssl.conf
