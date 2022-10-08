local masonStatus, mason = pcall(require, 'mason')
if (not masonStatus) then return end

local masonLspconfigStatus, masonLspconfig = pcall(require, 'mason-lspconfig')

mason.setup {}

masonLspconfig.setup {
  ensure_installed = { 'tailwindcss', 'css-lsp' }
}

