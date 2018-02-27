#!/bin/bash

MYDIR="$(dirname "$(readlink -f "$0")")"

mv vimrc ${MYDIR}/vimrc ~/.vimrc


# Update and install required packages
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y tmux vim python-pip python3-pip


