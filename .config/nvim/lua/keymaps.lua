vim.g.mapleader = ' '

local keymap = vim.keymap

-- do not yank on x
keymap.set('n', 'x', '"_x')

