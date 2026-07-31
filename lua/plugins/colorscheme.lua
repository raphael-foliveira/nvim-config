return {
  {
    "LazyVim/LazyVim",
  },
  { "EdenEast/nightfox.nvim" },
  {
    "navarasu/onedark.nvim",
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
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
