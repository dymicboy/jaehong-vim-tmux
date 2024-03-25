#!/bin/bash

echo "Installing tmux..."

# Install tmux
sudo apt-get install tmux

# Get script path
SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

# Make .tmux.conf as a symbolic link of tmux_gpkosz/.tmux.conf
sudo ln -sf "$SCRIPT_PATH/third_parties/tmux_gpkosz/.tmux.conf" ~/.tmux.conf

# Make .tmux.conf.local as a symbolic link of tmux.conf.local
sudo ln -sf "$SCRIPT_PATH/tmux.conf.local" ~/.tmux.conf.local

echo "Installing tmux finished!"
