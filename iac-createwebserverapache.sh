#!/bin/bash

apt update

apt upgrade -y

apt install apache2

apt install unzip

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

cp /tmp/linux-site-dio-main/* /var/www/html/

cd /scripts/

git add iac-createwebserverapache.sh
git commit -m "IaC Create Web Server Apache Script Bash"
git push
