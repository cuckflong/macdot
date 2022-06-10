---@diagnostic disable: undefined-global

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup({function()
  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'
  use 'dstein64/vim-startuptime'

  -- Status lines
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'configs.lualine'
    end,
  }
  use {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    after = 'nvim-web-devicons',
    config = function()
      require 'configs.bufferline'
    end,
  }
  use {
    'SmiteshP/nvim-gps',
    event = "CursorMoved",
    config = function()
      require 'configs.gps'
    end,
  }

  -- Themes
  use 'navarasu/onedark.nvim'
  use 'ryanoasis/vim-devicons'
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require'nvim-web-devicons'.setup({
        default = true;
      })
    end,
  }
  use 'p00f/nvim-ts-rainbow'
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    config = function()
      require('nvim-tree').setup()
    end,
  }
  use {
    'norcalli/nvim-colorizer.lua',
    event = 'BufRead',
    config = function()
      require('colorizer').setup()
    end,
  }
  use {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup()
    end,
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  }
  use {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end,
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require 'configs.indent-blankline'
    end,
  }
  use {
    'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup()
    end,
  }

  -- Syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufRead', 'BufNewFile' },
    run = ':TSUpdate',
    config = function()
      require 'configs.treesitter'
    end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Autocomplete
  use {
    'neovim/nvim-lspconfig',
    after = "nvim-lsp-installer",
    config = function()
      require 'configs.lspconfig'
    end,
  }
  use {
    'williamboman/nvim-lsp-installer',
    config = function()
      require 'configs.lsp-installer'
    end,
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
  }
  use {
    'hrsh7th/cmp-buffer',
  }
  use {
    'hrsh7th/cmp-path',
  }
  use {
    'hrsh7th/cmp-cmdline',
  }
  use {
    'hrsh7th/cmp-nvim-lua',
  }
  use {
    'saadparwaiz1/cmp_luasnip',
  }
  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  }
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'configs.cmp'
    end,
  }
  use {
    'tami5/lspsaga.nvim',
    config = function()
      require 'configs.lspsaga'
    end,
  }
  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  }
  use {
    'ray-x/lsp_signature.nvim',
    config = function()
      require 'configs.lsp-signature'
    end,
  }
  use {
    'rafamadriz/friendly-snippets',
  }

  -- Utils
  use {
    'mg979/vim-visual-multi',
    branch = 'master'
  }
  use 'tpope/vim-surround'
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  }
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    config = function()
      require 'configs.telescope'
    end,
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use {
    'numToStr/Comment.nvim',
    module = "Comment",
    keys = { "gc", "gb" },
    config = function()
      require('Comment').setup()
    end,
  }
  use 'ggandor/lightspeed.nvim'
  use 'wellle/targets.vim'
  use 'fedepujol/move.nvim'
  use {
    'akinsho/toggleterm.nvim',
    tag =  'v2.*',
    cmd = 'ToggleTerm',
    config = function()
      require 'configs.toggleterm'
    end,
  }

  -- Dev
  use 'editorconfig/editorconfig-vim'
  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'
  use 'sbdchd/neoformat'

end,
config = {
  profile = {
    enable = true,
  }
}})
