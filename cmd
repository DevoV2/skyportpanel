#!/bin/bash


# Update package list and install dependencies
sudo apt update
sudo apt install -y curl software-properties-common
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install nodejs -y 
sudo apt install git -y

echo_message "* Installed Dependencies"

echo_message "* Installing Files"

# Create directory, clone repository, and install files
git clone https://github.com/achul123/panel5.git && mv panel5 panel && cd panel && npm install && npm run seed && npm run createUser



echo "*Panel has been successfully installed!"
