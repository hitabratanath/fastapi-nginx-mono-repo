#!/bin/bash
echo "Testing nginx configuration..."
sudo nginx -t -c $(pwd)/nginx/nginx.conf -p $(pwd)/nginx/