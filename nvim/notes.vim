call plug#begin('~/.config/nvim/plugged')
Plug 'honza/vim-snippets'
Plug '907th/vim-auto-save'
Plug 'mattn/emmet-vim'
Plug 'franbach/miramare'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
let g:auto_save = 1
set noreadonly
let b:coc_enabled=0
let g:startify_disable_at_vimenter = 1
set linebreak
au VimEnter * AirlineToggle
let g:auto_save_silent = 1
let g:auto_save_events = ["CursorHoldI", "TextChanged"]
set termguicolors
colorscheme miramare
set noru
set nosmd
set encoding=utf-8
set expandtab ts=2 sw=2
set display+=lastline
