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
  use 'nvim-lua/plenary.nvim'

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
    config = function()
      require 'configs.bufferline'
    end,
  }
  use {
    'SmiteshP/nvim-gps',
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
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    config = function()
      require('nvim-tree').setup()
    end,
  }
  use {
    'norcalli/nvim-colorizer.lua',
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
    'karb94/neoscroll.nvim',
    config = function()
      require 'configs.neoscroll'
    end,
  }

  -- Syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require 'configs.treesitter'
    end,
  }
  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  }
  use 'p00f/nvim-ts-rainbow'
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- lsp
  use {
    'williamboman/nvim-lsp-installer',
    config = function()
      require 'configs.lsp-installer'
    end,
  }
  use {
    'neovim/nvim-lspconfig',
    after = "nvim-lsp-installer",
    config = function()
      require 'configs.lspconfig'
    end,
  }
  use {
    'tami5/lspsaga.nvim',
    config = function()
      require 'configs.lspsaga'
    end,
  }
  use {
    'ray-x/lsp_signature.nvim',
    config = function()
      require 'configs.lsp-signature'
    end,
  }
  -- use {
  --   'jose-elias-alvarez/null-ls.nvim',
  --   config = function()
  --     require 'configs.null-ls'
  --   end,
  -- }

  -- Autocomplete
  use {
    'rafamadriz/friendly-snippets',
  }
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'configs.cmp'
    end,
  }
  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
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
    'saadparwaiz1/cmp_luasnip',
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
  use {
    "folke/which-key.nvim",
    config = function()
      require 'configs.which-key'
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
