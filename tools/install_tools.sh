#!/bin/bash

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

sudo apt install silversearcher-ag

# Add bash_aliases.sh as source in .bashrc if not already present
if ! grep -q "source ${SCRIPT_PATH}/bash_aliases.sh" ~/.bashrc; then
    echo "source ${SCRIPT_PATH}/bash_aliases.sh'" >> ~/.bashrc
fi
