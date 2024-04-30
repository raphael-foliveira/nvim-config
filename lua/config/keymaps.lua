-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local opts = { noremap = true, silent = true }
local set = vim.keymap.set

set({ "n" }, "<C-c>", "<cmd>nohl<CR>", opts)
set({ "n" }, "<C-p>", "<cmd>Telescope find_files<CR>")
set({ "n" }, "J", "", opts)
set({ "i" }, "<C-BS>", "<C-w>", opts)
