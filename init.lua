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

-- require("rose-pine").setup({
--   styles = {
--     italic = false,
--   },
-- })

-- vim.cmd("colorscheme catppuccin-mocha")
-- vim.cmd("colorscheme github_dark_default")
-- vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("colorscheme carbonfox")
vim.cmd("colorscheme onedark")
-- require("onedark").load()
--
-- vim.o.background = "dark"

-- -- GRUVBOX CONFIG START --
-- require("gruvbox").setup({
--   terminal_colors = true,
--   overrides = {
--     Function = { fg = "#d3869b" },
--     Type = { fg = "#EBDBB2" },
--     Typedef = { fg = "#EBDBB2" },
--     ["@constant.builtin.go"] = { fg = "#d3869b" },
--   },
--   italic = {
--     strings = false,
--     emphasis = false,
--     comments = false,
--     operators = false,
--     folds = false,
--   },
--   strikethrough = false,
--   contrast = "hard",
--   dim_inactive = false,
--   transparent_mode = false,
-- })
--
-- vim.cmd("colorscheme gruvbox")
--
-- vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "NONE", underline = false })
-- vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "NONE", underline = false })
-- vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "NONE", underline = false })
--
-- -- GRUVBOX CONFIG END --
