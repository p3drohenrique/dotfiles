call plug#begin()
  if has("nvim")
    Plug 'dracula/vim', { 'as': 'dracula' }      
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'L3MON4D3/LuaSnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'onsails/lspkind-nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'ryanoasis/vim-devicons'
    Plug 'gko/vim-coloresque'
    Plug 'tami5/lspsaga.nvim' 
    Plug 'windwp/nvim-ts-autotag'
  endif
call plug#end()
