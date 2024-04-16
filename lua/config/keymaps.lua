-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n" }, "<C-c>", "<cmd>nohl<CR>")
vim.keymap.set({ "n" }, "<C-p>", "<cmd>Telescope find_files<CR>")
vim.keymap.set({ "n" }, "J", "")
vim.keymap.set({ "n" }, "<M-l>", "<cmd>cnext<CR>")
vim.keymap.set({ "n" }, "<M-h>", "<cmd>cprev<CR>")
vim.keymap.set({ "i" }, "<C-BS>", "<C-w>")
