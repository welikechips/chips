#!/bin/bash
#Read root password
read -r -p "What is your root password" rootpassword
#Read password for masscan setup
read -r -p "What password do you want to use for masscan" masspassword

#Install requirements
apt-get update
apt-get install -y apache2 php php-mysql mysql-server php-xml gcc make
systemctl start mysql
systemctl start apache2

#Install and make Masscan
path=$(pwd)
masscan=/masscan/bin/masscan
git clone https://github.com/robertdavidgraham/masscan
cd masscan/
make -j

#Create symbolic link for masscan
cd /usr/bin/
ln -s $path$masscan masscan

#Install Masscan Web UI
git clone https://github.com/offensive-security/masscan-web-ui
mv masscan-web-ui/* /var/www/html/

#Add masscan user to mysql
mysql -u root -p$rootpassword <<EOF
create database masscan;
CREATE USER 'masscan'@'localhost' IDENTIFIED BY '$masspassword';
GRANT ALL PRIVILEGES ON masscan.* TO 'masscan'@'localhost';
exit
EOF

cd /var/www/html
mysql -u root -p$rootpassword masscan < db-structure-mysql.sql

#overwrite config file
sed -i 's/pgsql/mysql/g' /var/www/html/config.php
sed -i "s/changem3/$masspassword/g" /var/www/html/config.php

#Explain how to use it
echo "
USAGE: masscan 10.0.0.0/8 -p80,21,53 --banners --source-ip 10.0.0.2 --max-rate 100000 -oX scan-01.xml
Add To Database: php import.php scan-01.xml"
