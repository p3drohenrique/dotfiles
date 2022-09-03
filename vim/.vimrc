syntax on
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set incsearch
set ignorecase
set smartcase
set scrolloff=10
set cmdheight=1
set updatetime=100
set encoding=utf-8
set nobackup
set nowritebackup
set autoread
set splitright
set splitbelow
set mouse=a
filetype on

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

function! HighlightWordUnderCursor()
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
