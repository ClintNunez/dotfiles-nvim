local builtin = require('telescope.builtin')

-- files and strings
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- help
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- quickfix
vim.keymap.set('n', '<leader>fqf', builtin.quickfix, {})

-- lsp
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})

-- git
vim.keymap.set('n', '<leader>fgc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>fgs', builtin.git_status, {})
