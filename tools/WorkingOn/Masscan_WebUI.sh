#!/bin/bash
apt-get update
apt-get install -y apache2 php php-mysql mysql-server php-xml gcc make
systemctl start mysql
systemctl start apache2
mkdir -p /root/tools/
cd /root/tools/
git clone https://github.com/robertdavidgraham/masscan
cd /root/tools/masscan/
make -j
cd /root/tools
git clone https://github.com/offensive-security/masscan-web-ui
mv masscan-web-ui/* /var/www/html/
cd /usr/bin
ln -s /root/tools/masscan/bin/masscan masscan
cd /var/www/html

echo "
Add this to mysql
create database masscan;
CREATE USER 'masscan'@'localhost' IDENTIFIED BY 'changeme3';
GRANT ALL PRIVILEGES ON masscan.* TO 'masscan'@'localhost';
exit

Run this in /var/www/html

mysql -u root -p masscan < db-structure-mysql.sql
rm db-stru* REA*

Then edit config.php

#define('DB_DRIVER',	    'mysql');
#define('DB_HOST',       'localhost');
#define('DB_USERNAME',   'masscan');
#define('DB_PASSWORD',   'changeme3');
#define('DB_DATABASE',   'masscan');

USAGE: masscan 10.0.0.0/8 -p80,21,53 --banners --source-ip 10.0.0.2 --max-rate 100000 -oX scan-01.xml

Add To Database: php import.php scan-01.xml"