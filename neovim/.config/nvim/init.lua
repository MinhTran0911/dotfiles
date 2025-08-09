vim.loader.enable()

nvim_version = vim.version()
major = nvim_version.major
minor = nvim_version.minor
patch = nvim_version.patch
version = major .. '.' .. minor .. '.' .. patch
vim.notify('Nvim Version: ' .. version)

vim.opt.compatible = false
vim.opt.updatetime = 50

-- Disabled ununsed providers
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.shell = '/bin/bash'

-- +--- Colorscheme ---+
vim.opt.termguicolors = true
vim.opt.guicursor = 'a:block,i:ver100-blinkon1000-blinkoff1000'

-- +--- Line Number ---+
vim.opt.number = true
vim.opt.relativenumber = false

-- +--- Wrap ---+
vim.opt.wrap = true

-- +--- Identation ---+
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true -- Convert tabs to spaces

-- +--- Search Highlighting ---+
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- +--- Cursor ---+
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- +--- Clipboard ---+
vim.opt.clipboard = 'unnamedplus'

-- +--- Misc ---+
vim.opt.ttyfast = true -- Speed up scrolling
vim.opt.swapfile = false -- Do not generate *.swp file when opening
vim.opt.encoding = 'UTF-8'
vim.opt.showmode = false -- Disable showmode as statusline is provided by plugins
vim.opt.virtualedit = 'none'
vim.opt.list = false
vim.opt.foldenable = false
vim.opt.spell = true

-- Do not count "," as part of path. This allow gf operation in Xcelium logs
vim.opt.isfname:remove({ ',', '+' })
vim.opt.isfname:append({ '{', '}', '$' })

-- +--- Split Window Direction ---+
vim.opt.splitright = true
vim.opt.splitbelow = false

-- +--- Syntax Highlighting ---+
vim.filetype.add({
  vh  = 'verilog',
  vp  = 'verilog',
  svh = 'systemverilog',
  svp = 'systemverilog',
  svi = 'systemverilog',
  f   = 'sh',
  ccf = 'tcl',
})

-- +--- Language Server Protocol (LSP) ---+
require('config.lsp.lua_ls')
require('config.lsp.rust-analyzer')
-- require('config.lsp.pyright')
require('config.lsp.verible')

-- +--- Keymaps ---+
require("config.keymaps")

-- +--- Plugins ---+
-- Bootstrap lazy.nvim
require("config.lazy")

vim.api.nvim_create_user_command('E', 'Explore', {})
