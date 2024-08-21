-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- 关闭相对行号
opt.relativenumber = false

-- bigfix阈值大小
vim.g.bigfile_size = 1024 * 1024 * 50 -- 50 MB
