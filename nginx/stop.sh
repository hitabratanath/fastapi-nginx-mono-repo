#!/bin/bash
echo "Stopping nginx..."
# Try graceful shutdown first
sudo nginx -s quit -c $(pwd)/nginx/nginx.conf -p $(pwd)/nginx/ 2>/dev/null || \
# If that fails, kill the process
sudo pkill -f "nginx.*$(pwd)/nginx/nginx.conf" || \
echo "No nginx process found to stop"