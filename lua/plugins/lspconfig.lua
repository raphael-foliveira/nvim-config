return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    vtsls = {
      keys = {
        {
          "<leader>co",
          LazyVim.lsp.action["source.removeUnused.ts"],
          desc = "Organize Imports",
        },
      },
    },
  },
}
