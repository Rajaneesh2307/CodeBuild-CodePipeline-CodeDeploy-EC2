#!/bin/bash

echo "Copying Vite build to Nginx directory..."

# Create Nginx default root if not exists
mkdir -p /var/www/html/

# Clean existing files
rm -rf /var/www/html/*

# Copy Vite build
cp -r /home/ec2-user/react-vite-app/dist/* /var/www/html/
