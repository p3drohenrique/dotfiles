" GLOBAL SETS
syntax on
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set autoindent
set breakindent
set hidden
set incsearch
set ignorecase
set smartcase
set scrolloff=10
set cmdheight=1
set updatetime=100
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread
set mouse=a
set nocompatible
set lazyredraw
set nowrap
set path+=**
set wildignore+=*/node_modules/*
set formatoptions+=r
set encoding=utf-8
set fileencodings=utf-8,latin
set ai
set si
set clipboard+=unnamedplus

scriptencoding utf-8
filetype on
filetype plugin on
filetype indent on

" FILETYPES
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" IMPORTS
runtime ./plug.vim
runtime ./plugconfig.vim
runtime ./remaps.vim
runtime ./autocmd.vim
runtime ./theme.vim
