-- Defined in keymap.lua
-- vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

vim.opt.nu = true  -- show number
vim.opt.rnu = true -- show relative

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.scrolloff = 8

vim.opt.swapfile = false
-- netrw
vim.g.nvim_tree_group_empty = true
-- obsidian.lua
vim.opt.conceallevel = 1
-- lualine
vim.opt.showmode = false
