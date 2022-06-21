" Fundamentals "{{{
" ---------------------------------------------------------------------
lua require('impatient').enable_profile()

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
set updatetime=100
set shortmess+=c
" set nohlsearch
set incsearch
set noerrorbells
set scrolloff=10
set sidescrolloff=30
set cmdheight=1

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
lua require('plugins')

" Do Mac stuff
runtime ./macos.vim

" Do Windows stuff
" runtime ./windows.vim

runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

let g:onedark_config = {
    \ 'style': 'deep',
    \ 'transparent': v:true,
\}
colorscheme onedark
hi Visual  guifg=SlateBlue guibg=LightCyan gui=none
hi VertSplit guibg=bg guifg=bg
hi ScrollView guibg=LightBlue 
hi Search guibg=LightGray guifg=Black

let g:indentLine_fileTypeExclude = ['lsp-installer', 'help']

"}}}

" undotree
if has("persistent_undo")
  let target_path = expand('~/.undodir')

  if !isdirectory(target_path)
    call mkdir(target_path, "p", 0700)
  endif

  let &undodir=target_path
  set undofile
endif

let g:undotree_SetFocusWhenToggle=1

" Don't auto commenting new lines
autocmd BufEnter * set fo-=c fo-=r fo-=o

