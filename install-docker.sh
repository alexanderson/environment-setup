#!/usr/bin/env bash

if [[ "$EUID" -ne 0 ]]
  then echo "Please run as root"
  exit
fi

set -e

# Uninstall old versions
apt-get remove docker docker-engine docker.io containerd runc

# Update the apt package index
apt-get update

# Install packages to allow apt to use a repository over HTTPS
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Set up the stable repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index
apt-get update

# Install the latest version of Docker CE and containerd
apt-get install -y docker-ce docker-ce-cli containerd.io


# Create the docker group if it doesn't already exist
if ! getent group docker; then
    groupadd docker
fi

# Add your user to the docker group
usermod -aG docker $USER
