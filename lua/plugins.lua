require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {'neoclide/coc.nvim', branch = 'release'}

    -- Requires Neovim >= 0.7
    -- (or >= 0.5 with the 0.5-compat branch)
    use {'feline-nvim/feline.nvim', branch = 'master'}

    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Nightfox themes:
    -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox
    use "EdenEast/nightfox.nvim"
end)
