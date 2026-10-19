return {
  {
    "mofiqul/vscode.nvim",
    opts = {
      group_overrides = {
        NeoTreeGitIgnored = { fg = "#808080" },
      },
    },
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        groups = {
          github_dark_default = {
            CursorLine = { bg = "palette.border.muted" },
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
  { "EdenEast/nightfox.nvim" },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "darker",
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      contrast = "hard",
    },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
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
