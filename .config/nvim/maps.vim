" Description: Keymaps

" Delete without yank
nnoremap <leader>d d
nnoremap <leader>c c
nnoremap c "_c
nnoremap d "_d
nnoremap x "_x

" Increment/decrement
" nnoremap + <C-a>
" nnoremap - <C-x>

"-----------------------------

"------------------------------
" Windows

" Split window
nmap <leader>ws :split<Return><C-w>w
nmap <leader>wv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
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

" Move lines and blocks
" nnoremap <S-down> :m+<CR>==
" nnoremap <S-up> :m-2<CR>==
" inoremap <S-down> <Esc>:m+<CR>==gi
" inoremap <S-up> <Esc>:m-2<CR>==gi
" vnoremap <S-down> :m'>+<CR>gv=gv
" vnoremap <S-up> :m-2<CR>gv=gv
"

