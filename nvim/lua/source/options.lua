-- Left Bar
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Error
vim.opt.errorbells = false

-- Files
vim.opt.autoread = true

-- Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.undofile = true

-- Scrolling
vim.opt.wrap = false
vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 8

-- Theme
vim.opt.termguicolors = true
vim.g.background = dark

vim.opt.mousemoveevent = true

vim.opt.updatetime = 50

vim.o.showmode = false
