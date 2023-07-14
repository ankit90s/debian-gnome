#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

# Get username and make buliddr
username=$(id -u -n 1000)
builddr=$(pwd)

echo 'deb https://mega.nz/linux/repo/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/megasync.list
curl -fsSL https://mega.nz/linux/repo/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/megasync.gpg > /dev/null
apt update
apt install -y megasync
apt install -y thunar-megasync
