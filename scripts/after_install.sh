#!/bin/bash

echo "Installing Node.js and npm..."
# Install Node.js and npm using n (Node version manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

export NVM_DIR="$HOME/.nvm"
# Load nvm
source "$NVM_DIR/nvm.sh"

# Install Node.js (LTS version)
nvm install --lts

echo "Node version: $(node -v)"
echo "npm version: $(npm -v)"

echo "Installing dependencies..."
cd /home/ec2-user/react-vite-app
npm install

echo "Building the React Vite app..."
npm run build

echo "Copying Vite build to Nginx directory..."
mkdir -p /var/www/html/
rm -rf /var/www/html/*
cp -r /home/ec2-user/react-vite-app/dist/* /var/www/html/
