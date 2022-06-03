" Description: Keymaps
nnoremap <C-c> <silent> <C-c>

" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------

"------------------------------
" Windows

" Split window
nmap ws :split<Return><C-w>w
nmap wv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map w<left> <C-w>h
map w<up> <C-w>k
map w<down> <C-w>j
map w<right> <C-w>l
map wh <C-w>h
map wk <C-w>k
map wj <C-w>j
map wl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

" Buffers

" Open a new empty buffer
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Move lines and blocks
nnoremap <C-h> :m+<CR>==
nnoremap <C-g> :m-2<CR>==
inoremap <C-h> <Esc>:m+<CR>==gi
inoremap <C-g> <Esc>:m-2<CR>==gi
vnoremap <C-h> :m'>+<CR>gv=gv
vnoremap <C-g> :m-2<CR>gv=gv


