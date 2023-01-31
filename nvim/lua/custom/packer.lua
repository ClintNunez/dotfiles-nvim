-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use ({
        'sts10/vim-pink-moon',
        as = 'pink-moon',
        config = function()
            vim.cmd('colorscheme pink-moon')
        end
    })

    -- Files
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    use 'nvim-tree/nvim-web-devicons' -- File icons

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Bufferline
    use {
        'akinsho/bufferline.nvim', tag = "v.3*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Flutter tools
    use {
        'akinsho/flutter-tools.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Color Highlights
    use 'norcalli/nvim-colorizer.lua'

    -- Git stuff(?)
    use 'lewis6991/gitsigns.nvim'

end)
