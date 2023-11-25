
-- Map <Leader>t to toggle or create the floaterm
vim.api.nvim_set_keymap('n', '<Leader>t', [[:FloatermToggle<CR>]], { noremap = true, silent = true })

-- Map <Leader>tk to kill all floaterm terminals
vim.api.nvim_set_keymap('n', '<Leader>tk', [[:FloatermKill<CR>]], { noremap = true, silent = true })

-- Map <Leader>tt to explicitly show or create the floaterm
vim.api.nvim_set_keymap('n', '<Leader>tt', [[:FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 zsh<CR>]], { noremap = true, silent = true })

-- Map Ctrl + Left Arrow to FloatermPrev
vim.api.nvim_set_keymap('t', '<C-Left>', '<C-\\><C-n>:FloatermPrev<CR>', { noremap = true, silent = true })

-- Map Ctrl + Right Arrow to FloatermNext
vim.api.nvim_set_keymap('t', '<C-Right>', '<C-\\><C-n>:FloatermNext<CR>', { noremap = true, silent = true })

