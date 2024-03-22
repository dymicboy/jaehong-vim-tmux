#!/bin/bash

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

bash $SCRIPT_PATH/advanced_cd/install_acd.sh
bash $SCRIPT_PATH/nvim/install_nvim.sh
bash $SCRIPT_PATH/tmux/install_tmux.sh
bash $SCRIPT_PATH/tools/install_tools.sh
