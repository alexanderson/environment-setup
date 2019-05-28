#!/usr/bin/env bash

# Install git itself
apt install -y git

cp ./.gitconfig ~
cp ./.githelpers ~
cp ./color-git-log /usr/local/bin/
chmod 755 /usr/local/bin/color-git-log