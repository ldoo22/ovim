-- nvim.cmd [[noremap <C-t> :NERDTreeToggle<CR>]]
-- toggle NERDTree show/hide using <C-n> and <leader>n
vim.api.nvim_set_keymap("n", "<C-f>", ":NERDTreeToggle<CR>", {noremap = true})

-- Start NERDTree and put the cursor back in the other window.
vim.cmd [[autocmd VimEnter * NERDTree | wincmd p]]

-- Start NERDTree. If a file is specified, move the cursor to its window.
vim.cmd [[autocmd StdinReadPre * let s:std_in=1]]
vim.cmd [[autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif]]

-- Start NERDTree when Vim starts with a directory argument.
vim.cmd [[autocmd StdinReadPre * let s:std_in=1]]
vim.cmd [[autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif]]

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd [[autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]

-- Close the tab if NERDTree is the only window remaining in it.
vim.cmd [[autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]

-- Open the existing NERDTree on each new tab.
vim.cmd [[autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif]]

-- Window size
vim.cmd [[let g:NERDTreeWinSize=55]]
