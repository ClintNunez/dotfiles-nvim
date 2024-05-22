require 'nvim-treesitter.configs'.setup({
    ensure_installed = {
        "c",
        "cpp",
        "kotlin",
        "lua",
    },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
})
