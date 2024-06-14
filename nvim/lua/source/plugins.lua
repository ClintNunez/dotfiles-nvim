require("lazy").setup({
    -- Github
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    },
    "lewis6991/gitsigns.nvim",

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
    "nvimtools/none-ls.nvim",


    { -- tabs
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    { -- better statusline
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

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
    {
        "folke/todo-comments.nvim",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                HACK = { icon = " ", color = "hack" },
                PERF = { icon = " ", color = "perf", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
            },
            highlight = {
                pattern = [[.*<(KEYWORDS)\s*]],
            },
            search = {
                pattern = [[\b(KEYWORDS)\b]],
            },
            colors = {
                error = { "#E67E80" },
                warning = { "#DBBC7F" },
                hack = { "#E69875" },
                info = { "#7FBBB3" },
                hint = { "#A7C080" },
                test = { "#D699B6" },
                perf = { "#9DA9A0" }
            }
        },
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
    },
    "mbbill/undotree", -- undotree
})

require("luasnip.loaders.from_vscode").lazy_load()
