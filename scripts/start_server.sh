#!/bin/bash

# Start the .NET application service
systemctl start my-dotnet-app.service

# Optionally, verify the service status
systemctl status my-dotnet-app.service
