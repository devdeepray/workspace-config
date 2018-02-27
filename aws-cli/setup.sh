#!/bin/bash

MYDIR="$(dirname "$(readlink -f "$0")")"
SAM_VERSION="0.2.7"
echo "Root directory set as ${MYDIR}"

pip install awscli --upgrade --user
mkdir -p ~/.aws
cp ${MYDIR}/config ~/.aws/config
echo "complete -C '~/.local/bin/aws_completer' aws" >> ~/.bashrc

sudo apt-get install -y docker

wget --directory-prefix=/tmp https://github.com/awslabs/aws-sam-local/releases/download/v${SAM_VERSION}/sam_${SAM_VERSION}_linux_amd64.deb

sudo dpkg -i /tmp/sam_${SAM_VERSION}_linux_amd64.deb
