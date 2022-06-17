vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4

vim.wo.number = true

vim.o.termguicolors = true

vim.cmd("colorscheme nightfox")

-- bufferline
vim.api.nvim_set_keymap('n', '[b', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ']b', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

