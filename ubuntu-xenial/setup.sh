#!/bin/bash

MYDIR="$(dirname "$(readlink -f "$0")")"
echo "Root directory set as ${MYDIR}"

# Configure git
git config --global user.email "devdeepray@gmail.com"
git config --global user.name "Devdeep Ray"

cp ${MYDIR}/vimrc ~/.vimrc


# Update and install required packages
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y tmux vim python-pip python3-pip
sudo apt-get install -y npm
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
sudo apt-get install -y python3.6

# Setup pip
pip2 install --upgrade pip
pip3 install --upgrade pip
