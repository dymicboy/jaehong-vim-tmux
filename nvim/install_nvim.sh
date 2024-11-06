#!/bin/bash

echo "Installing neovim and configurations..."

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

# Update golang to 1.23.2
# Get go1.23.2.linux-amd64.tar.gz from https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
rm -f go1.23.2.linux-amd64.tar.gz

# add go to PATH to .profile
if ! grep -q "export PATH=\$PATH:/usr/local/go/bin" ~/.profile; then
    echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
fi
# add go related environment variables to .profile
if ! grep -q "export GOPATH=\$HOME/go/bin" ~/.profile; then
    echo "export GOPATH=\$HOME/go/bin" >> ~/.profile
fi

# source .profile
source ~/.profile

# install go language server: gopls
go install golang.org/x/tools/gopls@v0.15.2

# install python language server: python-lsp-server
pip3 install python-lsp-server

# Install vim
sudo apt-get install vim

# Install fugitive
mkdir -p ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/tpope/start
vim -u NONE -c "helptags fugitive/doc" -c q

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install neovim v0.9.5 with https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz 
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
    source ~/.nvm/nvm.sh
    nvm install 20.11.1
fi

# Add alias vim as nvim if there's no alias for vim.
if ! grep -q "alias vim='nvim'" ~/.bashrc; then
    echo "alias vim='nvim'" >> ~/.bashrc
fi

echo "Installing neovim and configurations finished!"
