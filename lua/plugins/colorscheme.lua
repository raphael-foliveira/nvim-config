return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
    },
  },
  { "EdenEast/nightfox.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      style = "dark",
      contrast = "hard",
    },
  },

  { "projekt0n/github-nvim-theme" },
  { "Shatur/neovim-ayu", name = "ayu" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      no_italic = true,
    },
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      toggle_style_key = "<leader>ut",
      style = "darker",
      toggle_style_list = {
        "dark",
        "darker",
        "cool",
        "deep",
        "warm",
        "warmer",
        "light",
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      style = "night",
      styles = {
        comments = {
          italic = false,
        },
        keywords = {
          italic = false,
        },
      },
    },
  },
}
