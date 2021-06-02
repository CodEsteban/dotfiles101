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
set encoding=utf-8
syntax on
set ignorecase
set number
set autoindent
set showmatch
set relativenumber
set smartindent
let g:airline_theme ='transparent'
set termguicolors
colorscheme miramare
set expandtab ts=4 sw=4 ai
set list lcs=tab:\▏\ 
let g:miramare_enable_italic_string = 1

