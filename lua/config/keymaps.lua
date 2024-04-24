-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local opts = { noremap = true, silent = true }

vim.keymap.set({ "n" }, "<C-c>", "<cmd>nohl<CR>", opts)
-- vim.keymap.set({ "n" }, "<C-p>", "<cmd>Telescope find_files<CR>")
vim.keymap.set({ "n" }, "J", "", opts)
vim.keymap.set({ "i" }, "<C-BS>", "<C-w>", opts)
