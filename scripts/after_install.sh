#!/bin/bash

echo "Copying app files to Nginx directory..."
cp -r /home/ec2-user/react-vite-app/* /var/www/html/
