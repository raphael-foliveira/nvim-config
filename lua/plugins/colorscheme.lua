return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  {
    "Mofiqul/vscode.nvim",
    opts = {
      color_overrides = {
        vscBack = "#040404",
      },
    },
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      style = "cool",
      toggle_style_key = "<leader>t",
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
      colors = {
        black = "#060606",
        bg0 = "#080808",
        bg1 = "#202020",
        bg2 = "#080808",
        bg3 = "#303030",
        bg_d = "#080808",
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = { style = "night" },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      color_overrides = {
        mocha = {
          base = "#080808",
          mantle = "#121212",
          crust = "#080808",
        },
      },
    },
  },
}
