#!/bin/bash

echo "Installing neovim and configurations..."

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

# Install vim
sudo apt-get install vim

# Install fugitive
mkdir -p ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/tpope/start
vim -u NONE -c "helptags fugitive/doc" -c q

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install latest neovim with https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz 
tar xzf nvim-linux64.tar.gz
sudo cp -r nvim-linux64/* /usr/local/
rm -rf nvim-linux64 nvim-linux64.tar.gz

# Copy init.vim
mkdir -p ~/.config/nvim
sudo ln -sf "$SCRIPT_PATH/init.vim" ~/.config/nvim/init.vim

# Install nvim plugins
nvim +PlugInstall +qall

# Check if nodejs is installed and install nodejs if it's not installed.
if ! command -v node &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    nvm install 20
    source ~/.bashrc
fi

# Copy coc-settings.json
sudo ln -sf "$SCRIPT_PATH/coc-settings.json" ~/.config/nvim/coc-settings.json

# Copy coc package.json
mkdir -p ~/.config/coc/extensions
sudo ln -sf "$SCRIPT_PATH/coc-package.json" ~/.config/coc/extensions/package.json

# Install coc packages
npm -C ~/.config/coc/extensions install

# Add alias vim as nvim if there's no alias for vim.
if ! grep -q "alias vim='nvim'" ~/.bashrc; then
    echo "alias vim='nvim'" >> ~/.bashrc
fi

echo "Installing neovim and configurations finished!"
