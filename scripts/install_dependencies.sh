#!/bin/bash

# Update package repository
yum update -y

# Install .NET runtime
wget https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm -O packages-microsoft-prod.rpm
sudo rpm -Uvh packages-microsoft-prod.rpm
sudo yum install -y dotnet-runtime-8.0

# Clean up
rm packages-microsoft-prod.rpm
