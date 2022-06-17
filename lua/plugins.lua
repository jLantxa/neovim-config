require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {'neoclide/coc.nvim', branch = 'release'}

    -- Requires Neovim >= 0.7
    -- (or >= 0.5 with the 0.5-compat branch)
    use {'feline-nvim/feline.nvim', branch = 'master'}

    -- Nightfox themes:
    -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox
    use "EdenEast/nightfox.nvim"
end)
