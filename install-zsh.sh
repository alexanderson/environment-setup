#!/usr/bin/env bash

set -e

# Install zsh itself
apt install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install the powerlines font
apt install -y fonts-powerline

# Set the agnoster theme
sed -i 's/^ZSH_THEME=\".*\"$/ZSH_THEME="agnoster"/' ~/.zshrc
