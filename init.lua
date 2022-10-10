-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- include all
require('o')

-- No wrap
vim.cmd [[set nowrap]]

-- Hybrid lines
vim.cmd [[set number relativenumber]]
vim.cmd [[set nu rnu]]

-- Move line up and down
vim.api.nvim_set_keymap('n', '<leader>k', ':m -2<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>j', ':m +1<cr>', {})

-- I like having a column to limit code size (pep8)
vim.cmd [[set colorcolumn=79]]

-- Blink cursor
vim.cmd [[set guicursor=a:blinkon100]]

-- Always on column (avoids moving when a warning msg happens)
vim.cmd [[set signcolumn=yes]]
vim.cmd [[highlight clear SignColumn]]

-- Set indentation size
vim.cmd [[set tabstop=4 shiftwidth=4]]

-- Change errors floating pane text color
vim.cmd [[hi DiagnosticFloatingError guifg=white]]
