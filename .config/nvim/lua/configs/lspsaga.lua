---@diagnostic disable: undefined-global
local lspsaga = require 'lspsaga'
lspsaga.setup {
  border_style = "round",
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  finder_action_keys = {
    quit = {
      'q',
      '<ESC>',
    },
  },
  code_action_keys = {
    quit = {
      'q',
      '<ESC>',
    },
  },
  rename_action_keys = {
    quit = {
      'q',
      '<ESC>',
    },
  }
}

vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
  }
})

