return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  {
    name = "catppuccin",
    "catppuccin/nvim",
  },
  { "Mofiqul/vscode.nvim" },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      style = "cool",
      toggle_style_key = "<leader>t",
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
      colors = {
        black = "#080808",
        bg0 = "#080808",
        bg1 = "#202020",
        bg2 = "#080808",
        bg3 = "#080808",
        bg_d = "#080808",
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = { style = "night" },
  },
}
