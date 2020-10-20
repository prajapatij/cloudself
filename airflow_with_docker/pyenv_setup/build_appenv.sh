#!/bin/bash
##########################################################
# Setup virtual environment to run workflow objects
##########################################################

# source ~/setenv.sh

APP_DIR=$(pwd)/../apps
[ ! -d $APP_DIR ] && mkdir $APP_DIR && chmod -R 755 $APP_DIR/ && echo "INFO: New app directory created."

BUILD_TAG=$APP_DIR/.venv
[ ! -d $BUILD_TAG ] && python -m venv ${BUILD_TAG} && echo "INFO: New venv created."

source ${BUILD_TAG}/bin/activate

python -m pip install pip-tools
python -m pip install -U pip-tools
python -m piptools compile --upgrade --no-emit-index-url requirements.all.in -o requirements.txt
python -m pip install -r requirements.txt






