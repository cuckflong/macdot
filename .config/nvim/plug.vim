if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'SmiteshP/nvim-gps'

Plug 'navarasu/onedark.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'frazrepo/vim-rainbow'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'petertriho/nvim-scrollbar'
Plug 'lewis6991/gitsigns.nvim'
Plug 'j-hui/fidget.nvim'

Plug 'editorconfig/editorconfig-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'
Plug 'Yggdroot/indentLine'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'tami5/lspsaga.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mbbill/undotree'
Plug 'numToStr/Comment.nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'wellle/targets.vim'
Plug 'sbdchd/neoformat'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'ray-x/lsp_signature.nvim'
Plug 'fedepujol/move.nvim'

call plug#end()

