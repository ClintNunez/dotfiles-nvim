-- Leader
vim.g.mapleader = " "

-- Open netrw
vim.keymap.set("n", "<leader>vp", vim.cmd.Ex)

-- Increment / Decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab (bufferline)
vim.keymap.set("n", "te", ":tabedit")

-- Switching tabs (bufferline)
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- Split window
vim.keymap.set("n", "ss", ":split<Return><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- Move to other window
vim.keymap.set("", "sh", "<C-w>h")
vim.keymap.set("", "sk", "<C-w>k")
vim.keymap.set("", "sj", "<C-w>j")
vim.keymap.set("", "sl", "<C-w>l")

-- Resize window
vim.keymap.set("n", "<C-w>h", "<C-w><")
vim.keymap.set("n", "<C-w>l", "<C-w>>")
vim.keymap.set("n", "<C-w>k", "<C-w>+")
vim.keymap.set("n", "<C-w>j", "<C-w>-")

-- Moves blocks of code in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in place after pressing J
vim.keymap.set("n", "J", "mzJ`z")

-- Cursor stays in the middle while performing half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search terms will stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- <Space>p paste over words without copying
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Deletes texts without copying
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Copies text to system clip board
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")

-- Replaces all occurences of the word that the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Makes bash scripts executable (?)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
