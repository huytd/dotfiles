execute pathogen#infect()

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:deoplete#enable_at_startup=1

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>

let g:is_posix = 1

set nojoinspaces
set nowrap
set number
set ttyfast
set laststatus=2
set ttimeout
set ttimeoutlen=10
set termguicolors

let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#bf616a'
let g:terminal_color_2  = '#a3be8c'
let g:terminal_color_3  = '#ebcb8b'
let g:terminal_color_4  = '#8fa1b3'
let g:terminal_color_5  = '#b48ead'
let g:terminal_color_6  = '#96b5b4'
let g:terminal_color_7  = '#dfe1e8'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#bf616a'
let g:terminal_color_10 = '#a3be8c'
let g:terminal_color_11 = '#ebcb8b'
let g:terminal_color_12 = '#8fa1b3'
let g:terminal_color_13 = '#b48ead'
let g:terminal_color_14 = '#96b5b4'
let g:terminal_color_15 = '#eeeeec'

colorscheme base16-ocean 

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
endif

autocmd VimEnter * command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, {'down': '40%', 'options': '--color'})
nnoremap \ :Ag<SPACE>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:markdown_preview_auto=1

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

let mapleader=" "
nnoremap <Leader>p :Files<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestSuite<CR>
nnoremap <Leader>l :vsplit<CR>
nnoremap <Leader>k :split<CR>
nnoremap <Leader>wh :wincmd h<CR>
nnoremap <Leader>wl :wincmd l<CR>
nnoremap <Leader>wk :wincmd k<CR>
nnoremap <Leader>wj :wincmd j<CR>
nnoremap <Leader>e :QuickRunExecute<CR>

let g:airline#extensions#whitespace#enabled = 0

set relativenumber
set clipboard=unnamed

let g:go_dispatch_enabled = 1
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:deoplete#sources#go#gocode_binary=''
let g:deoplete#sources#go#package_dot=0
let g:deoplete#sources#go#sort_class=[]
let g:deoplete#sources#go#use_cache=0
let g:deoplete#sources#go#json_directory=''
let g:deoplete#auto_complete_start_length=3

inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

function! s:is_whitespace() "{{{
	let col = col('.') - 1
	return ! col || getline('.')[col - 1] =~? '\s'
endfunction "}}}

filetype plugin indent on

set t_ut=
set t_8f=[38;2;%lu;%lu;%lum 
set t_8b=[48;2;%lu;%lu;%lum 
