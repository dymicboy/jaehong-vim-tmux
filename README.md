# jaehong-vim-tmux

## Warning
 - Install script will overwrite your existing configuration files.
 - This is only for Linux.
 - You need copilot token to use copilot.vim. Please remove it on `nvim/init.vim` if you don't have it.

## Installation
 - Clone this repository.
 - To install all components, run `bash install.sh`.
 - You can install each component separately by running each install script in each directory.

## Components

### Vim(NeoVim)
 - Install with `bash nvim/install_jaehong_nvim.sh`

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
 - Install with `bash tmux/install_jaehong_tmux.sh`
 - Based on [gpakosz/.tmux](https://github.com/gpakosz/.tmux)
 - Applied vim for exploring terminal.
 - Applied vim for moving between panes.
 - Added `Ctrl + a` for prefix key.
 - Refer to [tmux-cheatsheet](https://tmuxcheatsheet.com/) for more information.

 ### Advanced cd
  - Install with `bash advanced_cd/install_acd.sh`
  - `cd --` to show previous directory.
  - `cd -{number}` to move to previous directory.
