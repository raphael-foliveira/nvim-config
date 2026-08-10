return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          -- Multiple LSP clients may answer the same hover request. Some
          -- clients return no hover data even when another client does.
          silent = true,
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
                importModuleSpecifierEnding = "minimal",
              },
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              staticcheck = false,
            },
          },
        },
      },
    },
  },
}
