#!/bin/bash

# Remove the old version (if installed via apt-get)
sudo apt-get remove docker-compose

# # Or remove if installed via curl
# sudo rm /usr/local/bin/docker-compose

# # Or remove if installed via pip
# pip uninstall docker-compose

# Find the newest version from GitHub releases
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)

# Download the latest version to a $PATH-accessible location
DESTINATION=/usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o $DESTINATION

# Set permissions
sudo chmod +x $DESTINATION

# echo the version
echo "docker-compose version $VERSION has been installed"
