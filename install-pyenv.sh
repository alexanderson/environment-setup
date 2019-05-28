#!/usr/bin/env bash

set -e
#
## Install pre-requisites
#sudo apt-get install -y \
#    make build-essential libssl-dev zlib1g-dev libbz2-dev \
#    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
#    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
#
## Install pyenv
#
## Checkout git repo
#git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Define environment variable PYENV_ROOT and add $PYENV_ROOT/bin to your $PATH
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv

# Add pyenv init to your shell to enable shims and autocompletion
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv

# Install pyenv-virtualenv

# Check out pyenv-virtualenv into plugin directory
git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv

# Add pyenv virtualenv-init to your shell to enable auto-activation of virtualenvs.
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshenv
