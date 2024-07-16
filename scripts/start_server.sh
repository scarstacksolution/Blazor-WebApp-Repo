#!/bin/bash

set -e

# Log start of script
echo "Starting start_server.sh script..."

# Reload systemd manager configuration
echo "Reloading systemd daemon..."
sudo systemctl daemon-reload

# Enable the service to start on boot
echo "Enabling my-dotnet-app.service..."
sudo systemctl enable BlazorApp.service

# Start the service
echo "Starting my-dotnet-app.service..."
sudo systemctl start BlazorApp.service

# Check the status of the service
echo "Checking status of my-dotnet-app.service..."
sudo systemctl status BlazorApp.service

echo "start_server.sh script completed successfully."
