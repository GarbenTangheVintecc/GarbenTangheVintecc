#!/bin/bash

cd "$(dirname "$0")"

# Set up stderr
set -e
clear

# Print date and time
echo -e "\n"
date
echo -e "\n"

# Update APT packages
echo -e "🚀 Updating APT packages ..."
sudo apt update
sudo apt upgrade -y
sudo apt clean
sudo apt autoclean
sudo apt remove
sudo apt autoremove -y
echo -e "🚀 Updated APT packages\n"

# Update snap packages
echo -e "🚀 Updating snap packages ..."
sudo snap refresh
echo -e "🚀 Updated snap packages\n"

# Print system info
clear
neofetch
echo -e "\n"

# Check for system updates
echo -e "🚀 Checking for system updates ..."
sudo do-release-upgrade -c || true
echo -e "\n"

exit 0
