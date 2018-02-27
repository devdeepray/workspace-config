#!/bin/bash

MYDIR="$(dirname "$(readlink -f "$0")")"
echo "Root directory set as ${MYDIR}"

pip install awscli --upgrade --user
cp ${MYDIR}/config ~/.aws/config
cp ${MYDIR}/credentials ~/.aws/credentials

