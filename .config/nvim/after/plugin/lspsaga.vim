lua << EOF
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
EOF

augroup lspsaga_filetypes
  autocmd!
  autocmd FileType LspsagaHover nnoremap <buffer><nowait><silent> <Esc> <cmd>close!<cr>
augroup END

nnoremap <silent> gr :Lspsaga rename<CR>
nnoremap <silent> gx :Lspsaga code_action<CR>
vnoremap <silent> gx :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent> K :Lspsaga hover_doc<CR>
nnoremap <silent> ga :Lspsaga signature_help<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent> go :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> gj :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gk :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
