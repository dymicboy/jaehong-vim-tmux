#!/bin/bash

echo "Installing advanced cd..."

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

# check if acd_cli is already installed
if [ -f ~/.acd_func.sh ]; then
    echo "acd_cli already installed"
    exit 0
fi

# Install acd_cli
sudo ln -sf "$SCRIPT_PATH/acd_func.sh" ~/.acd_func.sh

# Add acd_cli to bashrc
echo "source ~/.acd_func.sh" >> ~/.bashrc

echo "Installing advanced cd finished!"
