require("config.lazy")

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
  settings = {
    gopls = {
      buildFlags = { "-tags=unit,integration,mocks,e2e" },
    },
  },
})

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

require("rose-pine").setup({
  styles = {
    italic = false,
  },
})

-- vim.cmd("colorscheme catppuccin-mocha")
-- vim.cmd("colorscheme github_dark_default")
-- vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme rose-pine")
require("onedark").load()
