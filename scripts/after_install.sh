#!/bin/bash

echo "Starting AfterInstall script..."

# Just make sure Nginx root folder exists and files are there
if [ -d "/usr/share/nginx/html" ]; then
  echo "Files copied to /usr/share/nginx/html:"
  ls -l /usr/share/nginx/html
else
  echo "Error: /usr/share/nginx/html directory does not exist!"
  exit 1
fi

echo "AfterInstall script completed."
