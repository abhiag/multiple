#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install curl if not already installed
sudo apt install -y curl

# Download the installation package
wget https://cdn.app.multiple.cc/client/linux/x64/multipleforlinux.tar

# Extract the package
tar -xvf multipleforlinux.tar

# Navigate to the extracted directory
cd multipleforlinux

# Grant executable permissions
chmod +x ./multiple-cli
chmod +x ./multiple-node

# Add the directory to PATH
export PATH=$PATH:/root/multipleforlinux/

# Apply the PATH changes
source /etc/profile

# Return to the parent directory
cd ..

# Grant permissions to the extracted directory
chmod -R 777 multipleforlinux

# Start the node in the background
nohup ./multiple-node > output.log 2>&1 &

