#!/bin/sh

# Replace {{ COLOR }} in index.html with the COLOR environment variable
if [ -z "$COLOR" ]; then
  echo "ERROR: COLOR environment variable is not set."
  exit 1
fi

sed -i "s/{{ COLOR }}/$COLOR/g" /usr/share/nginx/html/index.html

# Start Nginx
nginx -g "daemon off;"
