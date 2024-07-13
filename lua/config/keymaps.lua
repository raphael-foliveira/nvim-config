local function combined_c_c()
  vim.cmd("nohl")
  vim.fn["copilot#Dismiss"]()
end

local function combined_c_s()
  vim.cmd("w")
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

set("i", "<M-h>", "copilot#Dismiss()", {
  expr = true,
  replace_keycodes = false,
})

set({ "n" }, "<C-c>", combined_c_c, {
  expr = true,
  replace_keycodes = false,
})

set({ "n" }, "<C-s>", combined_c_s, opts)

set({ "n" }, "<C-\\>", "<cmd>ToggleTerm size=20 direction=horizontal<CR>")
set({ "t" }, "<C-\\>", "<cmd>ToggleTerm<CR>")
