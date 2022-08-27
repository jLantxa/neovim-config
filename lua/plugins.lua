-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lualine/lualine.nvim'
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly',
    }
    use {'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    use 'windwp/nvim-autopairs'
    use {'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use 'numToStr/Comment.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use {'hrsh7th/nvim-cmp',
        requires = {'hrsh7th/cmp-nvim-lsp'}
    }
    use {'L3MON4D3/LuaSnip',
        requires = {'saadparwaiz1/cmp_luasnip'}
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use 'tpope/vim-sleuth'
    use "EdenEast/nightfox.nvim"  -- Nightfox themes
    use 'folke/tokyonight.nvim'  -- Tokyo Night themes
    use 'sainnhe/sonokai'  -- Sonokai themes

    if is_bootstrap then
        require('packer').sync()
    end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})
