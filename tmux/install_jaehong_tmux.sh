#!/bin/bash

# Install tmux
sudo apt-get install tmux

# Get script path
SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

# Make .tmux.conf as a symbolic link of gpkosz_tmux/.tmux.conf
sudo ln -sf "$SCRIPT_PATH/third_parties/gpkosz_tmux/.tmux.conf" ~/.tmux.conf

# Make .tmux.conf.local as a symbolic link of jaehong-tmux
sudo ln -sf "$SCRIPT_PATH/jaehong-tmux.conf" ~/.tmux.conf.local
