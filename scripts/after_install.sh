#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting AfterInstall script..."

# Install nvm and Node.js (if not already installed)
if ! command -v node &> /dev/null
then
    echo "Node.js not found, installing nvm and Node.js..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    source "$NVM_DIR/nvm.sh"
    nvm install --lts
else
    echo "Node.js already installed: $(node -v)"
fi

echo "Switching to app directory: /home/ec2-user/react-vite-app"
cd /home/ec2-user/react-vite-app

echo "Installing dependencies..."
npm install

echo "Building the React Vite app..."
npm run build

echo "Copying Vite build to Nginx directory..."
# Ensure Nginx directory exists and clear old files
mkdir -p /var/www/html
rm -rf /var/www/html/*

cp -r dist/* /var/www/html/

echo "AfterInstall script completed successfully."
