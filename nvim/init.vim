set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

filetype plugin indent on
set nu
set rnu 
set encoding=utf-8
set fileencodings=utf-8,cp949
set clipboard=unnamedplus
set viminfo='100,<1000,s100,h
packloadall

call plug#begin()
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'rhysd/git-messenger.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rebelot/kanagawa.nvim'
Plug 'github/copilot.vim'
call plug#end()


" vim coc configs
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" You can choose one of [kanagawa, kanagawa-wave, kanagawa-dragon, kanagawa-lotus]
colorscheme kanagawa

highlight Visual guibg=#686940

autocmd BufWritePost,BufNewFile BUILD silent !buildifier %
