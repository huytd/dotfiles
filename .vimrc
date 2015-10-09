execute pathogen#infect()
set noro

set history=1000
filetype off
filetype plugin on
filetype indent on
set autoread
set showcmd

au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

set ignorecase
set smartcase
set hlsearch
set incsearch

set showmatch
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set encoding=utf8

syntax enable
set number
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
