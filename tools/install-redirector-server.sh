#!/bin/bash

sudo su
apt-get install apache2 -y
a2enmod ssl rewrite proxy proxy_http
a2ensite default-ssl.conf
a2enmod proxy_connect
service apache2 stop
service apache2 start
apt-get update -y
apt-get install software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update -y
apt-get install certbot python-certbot-apache
