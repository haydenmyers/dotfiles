vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them.
vim.opt.completeopt = 'menuone,longest,preview'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true -- remember the undo history if you close nvim

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.signcolumn = 'yes:2'

vim.opt.title = true
vim.opt.mouse = 'a' -- enable mouse for all modes

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.confirm = true -- ask for confirmation instead of erroring

