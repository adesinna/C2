#!/usr/bin/env bash

# encryption
sudo ln -snf /opt/c2/encryption-dev /var/www/encryption
sudo cp /vagrant/provision/confs/nginx/encryption.conf /etc/nginx/sites-available/encryption
sudo chmod 644 /etc/nginx/sites-available/encryption
sudo ln -snf /etc/nginx/sites-available/encryption /etc/nginx/sites-enabled/encryption

sudo service nginx restart

