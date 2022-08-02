require("harpoon").setup({})

vim.api.nvim_set_keymap('n', '<leader>l', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>h', ':lua require("harpoon.mark").add_file()<cr>', {})

vim.api.nvim_set_keymap('n', '<C-h>', ':lua require("harpoon.ui").nav_file(1)<cr>', {})
vim.api.nvim_set_keymap('n', '<C-j>', ':lua require("harpoon.ui").nav_file(2)<cr>', {})
vim.api.nvim_set_keymap('n', '<C-k>', ':lua require("harpoon.ui").nav_file(3)<cr>', {})
vim.api.nvim_set_keymap('n', '<C-l>', ':lua require("harpoon.ui").nav_file(4)<cr>', {})
