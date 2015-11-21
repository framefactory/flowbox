#!/bin/bash

# curl
apt-get install -y curl

# Apache, PHP, MySQL
apt-get install -y apache2 php5

echo mysql-server mysql-server/root_password password vagrant | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password vagrant | sudo debconf-set-selections
apt-get install -y mysql-server mysql-client

service apache2 restart

#apt-get install -y phpmyadmin


# SASS, Compass
apt-get install -y ruby ruby-dev
gem install sass
gem install compass
