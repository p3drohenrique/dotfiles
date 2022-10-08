" Do not yank with x
noremap x "_x

" Select all
nmap <C-a> gg<S-v>G

" Increment/decrement
noremap + <C-a>
noremap - <C-x>

" Delete a word backwards
nmap dw vb"_d

" Adding an empty line below, above and below with insert
nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

" Create a tab
nmap te :tabe<CR>

" Navigate between buffers
nmap ty :bn<CR>
nmap tr :bp<CR>

" Delete a buffer
nmap td :bd<CR>

" Create splits
nmap th :split<CR>
nmap tv :vsplit<CR>

" Close splits and others
nmap tt :q<CR>

" Call command shortcut
nmap tc :!

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Clipboard
" noremap <Leader>y "*yy
" noremap <Leader>y "*y
" noremap <Leader>p "*p
