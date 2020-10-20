#!/bin/bash

###########################################
# install system libraries
###########################################
sudo apt-get update
sudo apt-get install --no-install-recommends make build-essential libssl-dev libcurl4-openssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
# git should be present in Ubuntu flavors, still good to upgrade
sudo apt-get install --no-install-recommends git


############################################
# Install 'pyenv'
# Site: https://github.com/pyenv/pyenv#choosing-the-python-version
############################################

SETUP_DIR=$(pwd)

[ ! -d ~/.pyenv ] && git clone https://github.com/pyenv/pyenv.git ~/.pyenv
[ -d ~/.pyenv ] && cd ~/.pyenv && git pull && cd $SETUP_DIR

{
  echo 'export PYENV_ROOT="$HOME"/.pyenv'
  echo 'export PATH="$PYENV_ROOT"/bin:"$PATH"'
  echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi'
} >> ~/.bashrc

exec "$SHELL"
source ~/.bashrc




