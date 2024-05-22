require("lazy").setup({
    {
        "neanias/everforest-nvim",
        name = "everforest",
        version = false,
        lazy = false,
        priority = 1000,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
    },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
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
    "norcalli/nvim-colorizer.lua",
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },
})

require("luasnip.loaders.from_vscode").lazy_load()
