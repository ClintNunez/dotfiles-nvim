require 'undotree'.setup()

vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>uh", vim.cmd.UndotreeHide)
