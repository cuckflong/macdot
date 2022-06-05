" Description: Keymaps
nnoremap <C-c> <silent> <C-c>

" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

"-----------------------------

"------------------------------
" Windows

" Split window
nmap qs :split<Return><C-w>w
nmap qv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map q<left> <C-w>h
map q<up> <C-w>k
map q<down> <C-w>j
map q<right> <C-w>l
" Resize window
map qh <C-w><
map qk <C-w>+
map qj <C-w>-
map ql <C-w>>

" Buffers
" Open a new empty buffer
nmap nb :enew<cr>
" Move to the next buffer
nmap <Tab> :bnext<CR>
" Move to the previous buffer
nmap <S-Tab> :bprevious<CR>
" Close the current buffer
nmap cb :bd<CR>

" Move lines and blocks
nnoremap <S-down> :m+<CR>==
nnoremap <S-up> :m-2<CR>==
inoremap <S-down> <Esc>:m+<CR>==gi
inoremap <S-up> <Esc>:m-2<CR>==gi
vnoremap <S-down> :m'>+<CR>gv=gv
vnoremap <S-up> :m-2<CR>gv=gv


