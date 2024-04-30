-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "Copilot disable",
})

if vim.g.vscode then
  print("running inside vscode")
end
