#!/bin/bash

mimic_server=$1
sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-default-just-80.conf \
| sed 's|<REPLACE_MIMIC_SERVER_NAME>|'"${mimic_server}"'|g' > /etc/apache2/sites-enabled/000-default.conf
