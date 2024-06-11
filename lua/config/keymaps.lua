-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local function combined_c_c()
  vim.cmd("nohl")
  vim.fn["copilot#Dismiss"]()
end

local opts = { noremap = true, silent = true }
local set = vim.keymap.set

set({ "n" }, "<C-p>", "<cmd>Telescope find_files<CR>")
set({ "n" }, "J", "", opts)
set({ "i" }, "<C-BS>", "<C-w>", opts)
set({ "n" }, "<leader>cp", "<cmd>Copilot disable<CR>")
set({ "n" }, "<leader>cP", "<cmd>Copilot enable<CR>")

set("i", "<M-l>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

set({ "n" }, "<C-c>", combined_c_c, {
  expr = true,
  replace_keycodes = false,
})
