#!/bin/bash

# Install tmux
sudo apt-get install tmux

# Make .tmux.conf as a symbolic link of gpkosz_tmux/.tmux.conf
ln -s ~/jaehong-tmux.conf ~/.tmux.conf

# Make .tmux.conf.local as a symbolic link of jaehong-tmux
ln -s ~/jaehong-tmux.conf ~/.tmux.conf.local
