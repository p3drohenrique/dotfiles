-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("p3drohenrique.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment / Descrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New Tab
keymap.set("n", "te", ":tabe<CR>", opts)
keymap.set("n", "<tab>", ":bn<CR>", opts)
keymap.set("n", "<s-tab>", ":bp<CR>", opts)

-- Close tab
keymap.set("n", "td", ":bd<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w>down>", "<C-w>-")

-- Easy exit insert mode
keymap.set("i", "jj", "<Esc>")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Clipboard
keymap.set("n", "y", '"*y', opts)
keymap.set("n", "p", '"*p', opts)

-- Delete LazyVim keymaps
vim.keymap.del("n", "<c-_>") -- remove binding to open floating terminal
vim.keymap.del("n", "<c-/>") -- remove binding to open floating terminal
