-- Leader
vim.g.mapleader = " "

-- Open netrw
vim.keymap.set("n", "<leader>vp", vim.cmd.Ex)

-- Increment / Decrement
vim.keymap.set("n", ">", "<C-a>")
vim.keymap.set("n", "<", "<C-x>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
vim.keymap.set("n", "sh", ":split<Return><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- Move to other window
vim.keymap.set("", "wh", "<C-w>h")
vim.keymap.set("", "wk", "<C-w>k")
vim.keymap.set("", "wj", "<C-w>j")
vim.keymap.set("", "wl", "<C-w>l")

-- Resize window
vim.keymap.set("n", "rh", "<C-w><")
vim.keymap.set("n", "rl", "<C-w>>")
vim.keymap.set("n", "rk", "<C-w>+")
vim.keymap.set("n", "rj", "<C-w>-")

-- Moves blocks of code in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in the middle while performing half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search terms will stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- remap p to paste over words without copying
vim.keymap.set("x", "p", [["_dP]])

-- Deletes texts without copying
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Copies text to system clip board
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")

-- Replaces all occurences of the word that the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- KEYMAPS FOR PLUGINS --

-- BUFFERLINE
-- New tab
vim.keymap.set("n", "<S-t>", ":tabedit")

-- Switching tabs
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- todoCOMMENTS
-- jump to next todo comment
vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next({
        keywords = {
            "TODO",
            "FIX",
            "WARNING",
            "PERF",
            "HACK",
            "NOTE",
        }})
end, { desc = "Next error/warning todo comment" })

-- jump to prev todo comment
vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev({
        keywords = {
            "TODO",
            "FIX",
            "WARNING",
            "PERF",
            "HACK",
            "NOTE",
        }})
end, { desc = "Next error/warning todo comment" })

-- Todo features
vim.keymap.set("n", "tdqf", ":TodoQuickFix")
vim.keymap.set("n", "tdt", ":TodoTelescope")
