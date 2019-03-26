#!/bin/bash

#Installing updates
sudo apt update -y

#Installing Apache2
sudo apt install apache2 -y

#Installing MySQL
sudo apt install mysql-server -y

#Installing PHP
sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y


#Baixando MediaWiki
cd /var/www/html/
sudo wget https://releases.wikimedia.org/mediawiki/1.31/mediawiki-1.31.1.tar.gz

#Extraindo Wiki
sudo tar xvzf mediawiki-1.31.1.tar.gz

#Movendo pasta
mv mediawiki-1.31.1 wiki

#Excluindo pasta
rm -rf mediawiki-1.31.1.tar.gz

#Permissoes diretorios
chmod 777 /var/www/
chmod 777 /var/www/html/
chmod 777 /var/www/html/wiki/

#Reiniciando Apache
sudo service apache2 restart
