call plug#begin('~/.config/nvim/plugged')
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'franbach/miramare'
Plug '907th/vim-auto-save'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
set nowrap
set swapfile
set backup
set backupdir=~/tmp
set directory=~/tmp//
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
set encoding=utf-8
syntax on
set number
set showmatch
set relativenumber
let g:airline_theme ='transparent'
set termguicolors
colorscheme miramare
set expandtab ts=2 sw=2
set list
set lcs=tab:\▏\  
let g:miramare_enable_italic_string = 1
