#!/bin/bash

echo "Installing dependencies..."
cd /home/ec2-user/react-vite-app
npm install

echo "Building the React Vite app..."
npm run build

echo "Copying Vite build to Nginx directory..."

# Create the Nginx root if it doesn't exist
mkdir -p /var/www/html/

# Clean existing files
rm -rf /var/www/html/*

# Copy built files
cp -r /home/ec2-user/react-vite-app/dist/* /var/www/html/
