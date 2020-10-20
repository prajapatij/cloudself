#!/bin/bash

############################################
# install pyenv environments
# - python 3.8.2
# - venv 3.8.2
############################################

export GLOBAL_PYTHON_VERSION=3.8.2

pyenv install $GLOBAL_PYTHON_VERSION
pyenv versions

# set global python version to be used
pyenv global $GLOBAL_PYTHON_VERSION
pyenv versions
python --version

# install support venv
sudo apt-get install python3-venv