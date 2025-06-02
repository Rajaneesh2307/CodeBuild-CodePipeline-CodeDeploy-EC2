#!/bin/bash

echo "Updating and installing Nginx (Amazon Linux)..."
yum update -y
amazon-linux-extras enable nginx1
yum install -y nginx

systemctl enable nginx
systemctl start nginx

# Clean old deployment (optional)
rm -rf /usr/share/nginx/html/*

