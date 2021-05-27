set nocompatible
call plug#begin('~/.config/nvim/plugged')
Plug 'franbach/miramare'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
set nowrap
set enc=utf-8
set relativenumber
set smartindent
let g:airline_theme ='transparent'
colorscheme miramare
set expandtab ts=4 sw=4 ai
set list lcs=tab:\▏\ 
let g:miramare_enable_italic_string = 1
set termguicolors

