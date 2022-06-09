local lspsaga = require 'lspsaga'
lspsaga.setup {
  border_style = "round",
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
}

vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
  }
})

