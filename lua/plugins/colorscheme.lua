return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        groups = {
          github_dark_default = {
            -- Darker than the default #484f58 so the current line blends in
            CursorLine = { bg = "palette.border.muted" },
          },
        },
      })

      vim.cmd("colorscheme github_dark_default")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
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
