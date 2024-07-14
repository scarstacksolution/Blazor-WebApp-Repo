#!/bin/bash

# Set the directory where the deployment archive is located
DEPLOYMENT_ARCHIVE_DIR="/opt/codedeploy-agent/deployment-root/deployment-group-ID/d-deployment-ID/deployment-archive"

# Move to the deployment archive directory
cd "$DEPLOYMENT_ARCHIVE_DIR"

# Unzip the BlazorApp.zip file
unzip BlazorApp.zip

# Move the appspec.yml file to the root of the deployment archive
mv BlazorApp/appspec.yml .

# (Optional) Clean up the unzipped directory if it's no longer needed
# rm -rf BlazorApp

# Exit the script
exit 0
