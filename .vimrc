set nocompatible

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'

call plug#end()

syntax on
filetype plugin indent on

set t_Co=256
set ignorecase
set smartcase
set number
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set cursorline

let g:airline#extensions#tabline#enabled = 1

let g:rainbow_active = 1

" Start NERDTree when Vim is started without file arguments.

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
