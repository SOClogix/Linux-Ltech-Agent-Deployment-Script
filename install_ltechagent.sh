#!/bin/bash

# Check if the URL parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <download_url>"
    exit 1
fi

download_url="$1"

# Check if the system is using apt or yum
if command -v apt &> /dev/null; then
    package_manager="apt"
elif command -v yum &> /dev/null; then
    package_manager="yum"
else
    echo "Unsupported package manager. Exiting."
    exit 1
fi

# Download the specified URL
wget -O LTechAgent_x86_64.zip "$download_url"

# Install unzip
if [ "$package_manager" == "apt" ]; then
    apt install -y unzip
elif [ "$package_manager" == "yum" ]; then
    yum install -y unzip
fi

# Unzip the downloaded file
unzip LTechAgent_x86_64.zip

# Navigate to the LTechAgent directory
cd LTechAgent

# Make the install.sh script executable
chmod +x ./install.sh

# Run the install.sh script
bash ./install.sh

# Remove the LTechAgent directory and LTechAgent_x86_64.zip file
cd ..
#rm -rf LTechAgent
rm LTechAgent_x86_64.zip
