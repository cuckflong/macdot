let g:neoformat_try_node_exe = 1 

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry
augroup END

noremap <leader>nf :Neoformat<CR>
