vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

opts = { remap = false, silent = true }

vim.keymap.set('', '<Space>', '<Nop>', opts)
vim.keymap.set('n', '<S-M>', '<ESC>:exec &mouse!=""? "set mouse=" : "set mouse=a"<CR>', opts)

-- Stay in Visual after indent
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Do not Yank when Visual Paste
vim.keymap.set('v', 'p', '"_dP', opts)

-- Window Navigation
vim.keymap.set('n', '<C-Up>', '<C-w><Up>', opts)
vim.keymap.set('n', '<C-Down>', '<C-w><Down>', opts)
vim.keymap.set('n', '<C-Left>', '<C-w><Left>', opts)
vim.keymap.set('n', '<C-Right>', '<C-w><Right>', opts)
