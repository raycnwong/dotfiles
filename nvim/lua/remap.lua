vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- shift + j
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- shift + k
vim.keymap.set('n', '<leader>n', ":noh<CR>")
vim.keymap.set('x', '<leader>p', "\"_dP")
vim.keymap.set('n', '<leader>g', ":Git<CR>")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<C-h>', "<C-w>h")
vim.keymap.set('n', '<C-j>', "<C-w>j")
vim.keymap.set('n', '<C-k>', "<C-w>k")
vim.keymap.set('n', '<C-l>', "<C-w>l")
vim.keymap.set('v', '<C-r>', '"hy:%s/<C-r>h//g<left><left>')
