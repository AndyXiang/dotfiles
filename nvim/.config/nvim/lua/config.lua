vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

--undo files after exiting and reopening files
vim.opt.undofile = true

-- use <Space> as leader key
vim.g.mapleader = " "

-- tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0

-- prevent from auto comment
vim.opt.formatoptions:remove({ "c", "r", "o" })
