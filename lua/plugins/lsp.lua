return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
    servers = {
      vtsls = {
        typescript = {
          preferences = {
            importModuleSpecifier = "relative",
            importModuleSpecifierEnding = "minimal",
          },
        },
      },
    },
  },
}
