#!/bin/bash

<<<<<<< HEAD
apt update

apt upgrade -y

apt install apache2

apt install unzip
=======
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
>>>>>>> 5a38e20 (Ajuste de script)

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

<<<<<<< HEAD
cp /tmp/linux-site-dio-main/* /var/www/html/

cd /scripts/

git add iac-createwebserverapache.sh
git commit -m "IaC Create Web Server Apache Script Bash"
git push
=======
cd /tmp/linux-site-dio-main
cp -R * /var/www/html/



>>>>>>> 5a38e20 (Ajuste de script)
