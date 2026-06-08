vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>')

vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<leader>s', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

--vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Splits
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>')
vim.keymap.set('n', '<leader>wc', ':split<CR>')
vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>')
vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>')
vim.keymap.set('n', '<leader>wj', ':wincmd j<CR>')
vim.keymap.set('n', '<leader>wk', ':wincmd k<CR>')
vim.keymap.set('n', '<leader>wl', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>wu', ':resize +2<CR>')
vim.keymap.set('n', '<leader>wi', ':resize -2<CR>')
vim.keymap.set('n', '<leader>wo', ':vertical resize +2<CR>')
vim.keymap.set('n', '<leader>wp', ':vertical resize -2<CR>')

--vim.keymap.set('n', '<leader>t', ':Neotree<CR>')
vim.keymap.set('n', '<leader>,', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>.', ':bnext<CR>', opts)

vim.keymap.set("x", "p", [["_dP]], { remap = false })
