sudo curl -sSL https://raw.githubusercontent.com/welikechips/chips/master/tools/000-default.conf \
| sed \"s/<REPLACE_PUBLIC_IP_ADDRESS>/$(echo '$1' | sed 's/\./\\\\\\\\\./g')/g" \
| sed \"s/<REPLACE_SERVER_NAME>/$2/g\" > /etc/apache2/sites-enabled/000-default.conf
