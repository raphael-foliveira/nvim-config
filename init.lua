require("config.lazy")

require("github-theme").setup({
  groups = {
    all = {
      CursorLine = { bg = "#161d26" },
      NormalFloat = { bg = "#141414" },
    },
  },
})

require("onedark").setup({
  style = "darker",
})

vim.cmd("colorscheme github_dark_default")
