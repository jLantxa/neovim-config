require('packer').startup(function()
    use {
        'wbthomason/packer.nvim'
    }

    use {'neoclide/coc.nvim', branch = 'release'}

    use {
        'feline-nvim/feline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('feline').setup()
        end
    }

    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("bufferline").setup()
        end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly',
        config = function()
            require('nvim-tree').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim', }
    }

    -- Nightfox themes:
    -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox
    use {
        "EdenEast/nightfox.nvim"
    }
end)
