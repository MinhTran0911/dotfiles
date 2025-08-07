vim.loader.enable()

require("config.keymaps")

-- Basic settings
vim.o.number = true -- Enable line numbers
vim.o.relativenumber = false -- Enable relative line numbers
vim.o.tabstop = 2 -- Number of spaces a tab represents
vim.o.shiftwidth = 2 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors

-- Bootstrap lazy.nvim
require("config.lazy")

