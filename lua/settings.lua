vim.o.mouse="a"
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4

vim.wo.number = true

vim.o.termguicolors = true

vim.cmd("colorscheme sonokai")

-- bufferline
vim.api.nvim_set_keymap('n', 'çb', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'çn', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Setup plugins
require("nvim-tree").setup()
require("bufferline").setup()
require("feline").setup()

require('lspconfig')['clangd'].setup{}
require('lspconfig')['pyright'].setup{}


