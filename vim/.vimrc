call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()
set background=dark
colorscheme gruvbox "colorscheme
syntax on " highlight syntax
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set showmatch " high matching brackets
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
nnoremap <C-B> <C-V>
let mapleader = "'"
inoremap jk <ESC>
