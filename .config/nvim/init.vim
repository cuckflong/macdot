" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8

set nocompatible

syntax enable
filetype plugin indent on

set encoding=utf-8

set hidden
set nobackup
set noswapfile
set nowritebackup
set updatetime=50
set shortmess+=c
set nohlsearch
set incsearch
set noerrorbells
set scrolloff=8
set cmdheight=2

set t_Co=256

set title
set relativenumber
set number
set background=dark
set termguicolors

set shell=zsh

set signcolumn=yes

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set autoindent
set smartindent
set ignorecase
set smartcase
set smarttab

set tabstop=2
set shiftwidth=2
set expandtab

set nowrap "No Wrap lines
set backspace=start,eol,indent
set completeopt=menu,menuone,noselect

" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

"}}}


" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
set cursorlineopt=number
set guicursor=i:block

"}}}


" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}


" Syntax theme "{{{
" ---------------------------------------------------------------------

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:onedark_config = {
    \ 'style': 'deep',
    \ 'transparent': v:true,
\}
colorscheme onedark
hi Visual  guifg=SlateBlue guibg=LightCyan gui=none

let g:rainbow_active = 1

let g:indentLine_char = '▏'

"}}}

" Vim Visual Multi "{{{
" ---------------------------------------------------------------------

let g:VM_maps = {}
let g:VM_maps["Select All"]        = '<leader>a'
let g:VM_maps["Visual All"]        = '<leader>a'
let g:VM_maps["Align"]             = '<leader>A'
let g:VM_maps["Add Cursor Down"]   = '<C-j>'
let g:VM_maps["Add Cursor Up"]     = '<C-k>'

" }}}
