local function combined_c_s()
  vim.cmd("w")
  vim.cmd("nohl")
end

local opts = { noremap = true, silent = true }
local set = vim.keymap.set

set({ "n" }, "<C-p>", "<cmd>Telescope find_files<CR>")
set({ "n" }, "J", "", opts)
set({ "i" }, "<M-BS>", "<C-w>", opts)

set({ "i" }, "<C-c>", function()
  local ok, cmp = pcall(require, "cmp")
  if ok and cmp.visible() then
    cmp.close()
  end
  vim.cmd("nohl")
  vim.cmd("stopinsert")
end, opts)

set({ "n" }, "<C-s>", combined_c_s, opts)

set({ "n" }, "<C-/>", "<cmd>ToggleTerm size=20 direction=horizontal<CR>")
set({ "t" }, "<C-/>", "<cmd>ToggleTerm<CR>")
