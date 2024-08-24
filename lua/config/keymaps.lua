-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- 禁用J移动下一行，改为 移动光标到下面的窗口
map("n", "<S-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })

-- 禁用LazyVim Changelog
unmap("n", "<leader>L", { desc = "LazyVim Changelog" })
