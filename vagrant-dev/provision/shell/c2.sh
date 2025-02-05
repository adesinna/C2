#!/usr/bin/env bash

echo "starting provision"

sudo timedatectl set-timezone America/Toronto

sudo apt update
sudo apt install git -y
sudo apt install zip -y
sudo apt install nginx -y
sudo apt install php -y
sudo apt install php-fpm -y
# php lib
sudo apt install -y libmcrypt-dev gcc make autoconf libc-dev pkg-config

# Install Mcrypt extension
sudo apt install php-mcrypt -y
sudo phpenmod mcrypt

# Dynamically set PHP version
php_version=$(php -r "echo PHP_MAJOR_VERSION . '.' . PHP_MINOR_VERSION;")

echo "Using PHP version: $php_version"

# Restart PHP-FPM service to apply changes
sudo systemctl restart php${php_version}-fpm

echo "Provisioning complete!"

