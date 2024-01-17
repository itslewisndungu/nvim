vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.syntax = "on"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.errorbells = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.undofile = true

vim.opt.foldmethod = "indent"

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.isfname:append("@-@")

vim.opt.foldcolumn="auto"
vim.opt.foldlevelstart=99
