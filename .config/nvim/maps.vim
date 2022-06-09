" Description: Keymaps
"
" use space as leader:wq
nnoremap <SPACE> <Nop>
let mapleader=" "

" Delete without yank
nnoremap <leader>d d
nnoremap <leader>c c
nnoremap c "_c
nnoremap d "_d
nnoremap x "_x

"------------------------------
" Windows

" Split window
nmap <leader>ws :split<Return><C-w>w
nmap <leader>wv :vsplit<Return><C-w>w
" Move window
map <leader><left> <C-w>h
map <leader><up> <C-w>k
map <leader><down> <C-w>j
map <leader><right> <C-w>l
" Resize window
map <leader>w<left> <C-w><
map <leader>w<up> <C-w>+
map <leader>w<down> <C-w>-
map <leader>w<right> <C-w>>

" Buffers
" Open a new empty buffer
nmap <leader>bn :enew<cr>
" Move to the next buffer
nmap <Tab> :bnext<CR>
" Move to the previous buffer
nmap <S-Tab> :bprevious<CR>
" Close the current buffer
nmap <leader>bc :bd<CR>

" bufferline
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent> gp :BufferLinePick<CR>
nnoremap <silent> gl :BufferLinePickClose<CR>

" lspsaga
augroup lspsaga_filetypes
  autocmd!
  autocmd FileType LspsagaHover nnoremap <buffer><nowait><silent> <Esc> <cmd>close!<cr>
augroup extend

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

" surround
xmap gs <Plug>VSurround

" visual multi
let g:VM_show_warnings = 0
let g:VM_maps = {}
let g:VM_maps["Select All"]        = '<leader>a'
let g:VM_maps["Visual All"]        = '<leader>a'
let g:VM_maps["Align"]             = '<leader>A'
let g:VM_maps["Add Cursor Down"]   = '<C-j>'
let g:VM_maps["Add Cursor Up"]     = '<C-k>'
let g:VM_maps["Visual Cursors"]    = '\c'
xmap S <Plug>Lightspeed_S

" telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fa <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>fd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>fi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>

" move
nnoremap <silent> <S-down> :MoveLine(1)<CR>
nnoremap <silent> <S-up> :MoveLine(-1)<CR>
vnoremap <silent> <S-down> :MoveBlock(1)<CR>
vnoremap <silent> <S-up> :MoveBlock(-1)<CR>
nnoremap <silent> <S-right> :MoveHChar(1)<CR>
nnoremap <silent> <S-left> :MoveHChar(-1)<CR>
vnoremap <silent> <S-right> :MoveHBlock(1)<CR>
vnoremap <silent> <S-left> :MoveHBlock(-1)<CR>

" neoformat
noremap <leader>nf :Neoformat<CR>

" nvim-tree
nnoremap <C-p> :NvimTreeToggle<CR>

" toggleterm
nnoremap <C-\> :ToggleTerm<CR>

" undotree
nnoremap <leader>u :UndotreeToggle<CR>

" cinnamon
nnoremap { <Cmd>lua Scroll('{')<CR>
xnoremap { <Cmd>lua Scroll('{')<CR>
nnoremap } <Cmd>lua Scroll('}')<CR>
xnoremap } <Cmd>lua Scroll('}')<CR>

