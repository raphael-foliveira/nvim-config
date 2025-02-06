return {
  {
    "echasnovski/mini.indentscope",
    enabled = function()
      return not vim.g.vscode
    end,
  },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}
