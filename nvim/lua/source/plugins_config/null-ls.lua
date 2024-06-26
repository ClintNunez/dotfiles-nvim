local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.sell,
        null_ls.builtins.diagnostics.pylint.with({
            diagnostic_config = { underline = false, virtual_text = false, signs = false },
            method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        }),
    }
})
