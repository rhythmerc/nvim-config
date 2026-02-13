vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<C-h>', vim.diagnostic.open_float, { desc = "Open diagnostics float" })
