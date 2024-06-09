require("lazy").setup({
    { -- theme
        "neanias/everforest-nvim",
        name = "everforest",
        version = false,
        lazy = false,
        priority = 1000,
    },
    -- text colors
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    "norcalli/nvim-colorizer.lua",

    {-- fuzzyfinder
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- LSP
    { "VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    {
        "nvimtools/none-ls.nvim",
    },

    { -- tabs
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    { -- better statusline
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- ease of life
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }
})

require("luasnip.loaders.from_vscode").lazy_load()
