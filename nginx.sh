#!/bin/bash/

#input for current directory path
echo "Enter your ssl certificates directory path:"

read path

#copying ssl certificates into nginx directory
sudo cp -R  /home/ubuntu/$path/ssl /etc/nginx/ssl

#defined statement replacement
sudo sed -i 's#access_log /var/log/nginx/access.log#access_log /var/log/nginx/error.log#g' /etc/nginx/nginx.conf

#specific line replacement
sudo sed -i '42 s#error_log /var/log/nginx/error.log#error_log /var/log/nginx/access.log#g' /etc/nginx/nginx.conf
