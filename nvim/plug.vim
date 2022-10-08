call plug#begin()
  if has("nvim")
    Plug 'Rigellute/shades-of-purple.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'neovim/nvim-lspconfig'
    Plug 'onsails/lspkind-nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'tami5/lspsaga.nvim' 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'windwp/nvim-ts-autotag'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
  endif
call plug#end()
