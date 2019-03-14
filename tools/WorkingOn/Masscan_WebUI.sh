#!/bin/bash
sudo apt-get install -y apache2 php php-mysql mysql-server php-xml gcc make
sudo systemctl start mysql
sudo systemctl start apache2
sudo mkdir -p /root/tools/
sudo cd /root/tools/
git clone https://github.com/robertdavidgraham/masscan
sudo cd /root/tools/masscan/
sudo make -j
sudo cd /root/
sudo git clone https://github.com/offensive-security/masscan-web-ui
sudo mv masscan-web-ui/* /var/www/html/
cd /usr/bin
sudo ln -s /root/tools/masscan/bin/masscan masscan
cd /var/www/html

echo -e " \n add this to mysql
create database masscan;
CREATE USER 'masscan'@'localhost' IDENTIFIED BY 'weirdatfirst';
GRANT ALL PRIVILEGES ON masscan.* TO 'masscan'@'localhost';
exit "

mysql -u root -p
cd /var/www/html
mysql -u root -p masscan < db-structure-mysql.sql
rm db-structure* README.md

echo -e "\nEdit config.php

#define('DB_DRIVER',	    'mysql');
#define('DB_HOST',       'localhost');
#define('DB_USERNAME',   'masscan');
#define('DB_PASSWORD',   'changem3');
#define('DB_DATABASE',   'masscan'); "

echo "masscan 10.0.0.0/8 -p80,21,53 --banners --source-ip 10.0.0.2 --max-rate 100000 -oX scan-01.xml"

echo "php import.php scan-01.xml"