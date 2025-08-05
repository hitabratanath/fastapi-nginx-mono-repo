#!/bin/bash
# Kill any existing nginx processes first
sudo pkill -f "nginx.*$(pwd)/nginx/nginx.conf" 2>/dev/null || true

# Wait a moment
sleep 1

# Start nginx
echo "Starting nginx..."
sudo nginx -c $(pwd)/nginx/nginx.conf -p $(pwd)/nginx/
echo "Nginx started"