-- Enable mouse
--vim.o.mouse = "a"

-- Configure tab
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false

vim.wo.number = true

-- Colour scheme
vim.o.termguicolors = true
vim.cmd("colorscheme sonokai")

-- bufferline
vim.api.nvim_set_keymap('n', '[b', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ']b', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Setup plugins
require("nvim-tree").setup()
require("bufferline").setup()
require("feline").setup()

require('lspconfig')['clangd'].setup{}
require('lspconfig')['pyright'].setup{}
