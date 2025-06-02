#!/bin/bash

echo "Starting AfterInstall script..."

# Just make sure Nginx root folder exists and files are there
if [ -d "/var/www/html" ]; then
  echo "Files copied to /var/www/html:"
  ls -l /var/www/html
else
  echo "Error: /var/www/html directory does not exist!"
  exit 1
fi

echo "AfterInstall script completed."
