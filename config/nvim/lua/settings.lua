--No swap file
vim.cmd('set noswapfile')

--Line above scroll
vim.o.scrolloff=0


local vim = vim

vim.wo.relativenumber = false
vim.wo.number = true

-- Smart Case
vim.o.ignorecase = true
vim.o.smartcase = true

-- Colors
vim.o.cursorline = true
vim.o.termguicolors = true

-- Indentation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- Split panes position
vim.o.splitbelow = true
vim.o.splitright = true
