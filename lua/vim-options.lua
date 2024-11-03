-- Sets the tabs to be 4 spaces using vimscript
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set timeoutlen=8000")
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.smartindent = false

-- Sets the leader key to space
vim.g.mapleader = " "

