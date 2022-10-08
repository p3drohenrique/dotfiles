if !exists('g:loaded_nvim_treesitter')
  finish
endif

lua <<EOF
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "php",
    "json",
    "yaml",
    "html",
    "css",
    "lua",
  }
}
EOF
