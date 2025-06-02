#!/bin/bash

echo "Copying app files to Nginx directory..."

# Ensure the Nginx directory exists
mkdir -p /var/www/html/

# Optionally clear the directory (uncomment if needed)
rm -rf /var/www/html/*

# Copy React Vite build files to Nginx directory
cp -r /home/ec2-user/react-vite-app/* /var/www/html/
