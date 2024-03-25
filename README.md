# jaehong-vim-tmux

## Overview
 - This repository is for setting up vim and tmux for jaehong's personal use.
 - This repository includes
     - NeoVim configuration
     - Tmux configuration
     - Advanced cd
     - Other useful scripts including silversearcher-ag and its ignore.

### Overall Settings
 - nu, rnum is set by default in vim.
 - buildifier will run on default for `BUILD` files.
 - neovim is based on kanagawa color scheme. (you can change color scheme by editing `nvim/init.vim`)
 - Auto completion with coc and copilot is applied.
     - coc will show suggestions with popup and you can apply it with `Enter`.
     - copilot will show suggestions on same line on vim insert mode and you can apply it with `Tab`.

## Warning
 - This is only for Linux.
 - You need copilot token to use copilot.vim. Please remove it on `nvim/init.vim` if you don't have the token.
 - This will overwrite
     - .agignore
     - neovim configuration files
     - coc configuration files
     - tmux configuration files

## Installation
 - Clone this repository.
 - To install all components, run `bash {repository path}/install.sh`.
 - You can install each component separately by running each install script in each directory.

## Components

### NeoVim
 - Install with `bash {repository path}/nvim/install_jaehong_nvim.sh`
 - vim is aliased to nvim.

#### Vim Plugins
 - fugitive: Git wrapper for vim. (:Git blame, :Git mergetool, etc.)

#### NeoVim Plugins
 - vim-prettier: Format code with prettier on save for json, javascript, typescript, css, scss, html, markdown.
 - vim-airline: Status line to show current mode, file path, git branch, etc.
 - git-messenger: Show git commit message. (Use `:GitMessenger` to show commit message)
 - kanagawa.nvim: Color scheme for nvim.
 - copilot.vim: Copilot for vim.
 - coc.nvim: Intellisense engine for vim.
     - coc-json
     - coc-go
     - coc-yaml
     - coc-python

### Tmux
 - Install with `bash {repository path}/tmux/install_jaehong_tmux.sh`
 - Based on [gpakosz/.tmux](https://github.com/gpakosz/.tmux)
 - Applied vim for exploring terminal.
 - Applied vim for moving between panes.
 - Added `Ctrl + a` for prefix key.
 - Refer to [tmux-cheatsheet](https://tmuxcheatsheet.com/) for more information.

 ### Advanced cd
  - Install with `bash {repository path}/advanced_cd/install_acd.sh`
  - `cd --` to show previous directory.
  - `cd -{number}` to move to previous directory.
