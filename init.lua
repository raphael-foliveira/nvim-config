require("config.lazy")

vim.filetype.add({ extension = { templ = "templ" } })

-- -- local custom_format = function()
-- --   if vim.bo.filetype == "templ" then
-- --     local bufnr = vim.api.nvim_get_current_buf()
-- --     local filename = vim.api.nvim_buf_get_name(bufnr)
-- --     local cmd = "templ fmt " .. vim.fn.shellescape(filename)
-- --
-- --     vim.fn.jobstart(cmd, {
-- --       on_exit = function()
-- --         if vim.api.nvim_get_current_buf() == bufnr then
-- --           vim.cmd("e!")
-- --         end
-- --       end,
-- --     })
-- --   else
-- --     vim.lsp.buf.format()
-- --   end
-- -- end
-- --
-- local on_attach = function(_, bufnr)
--   local opts = { buffer = bufnr, remap = false }
--   vim.keymap.set("n", "<leader>lf", custom_format, opts)
-- end

Capabilities = require("cmp_nvim_lsp").default_capabilities(Capabilities)
local lspconfig = require("lspconfig")

lspconfig.templ.setup({
  -- on_attach = on_attach,
  capabilities = Capabilities,
})

lspconfig.htmx.setup({
  -- on_attach = on_attach,
  capabilities = Capabilities,
  filetypes = { "html", "templ" },
})

lspconfig.tailwindcss.setup({
  -- on_attach = on_attach,
  capabilities = Capabilities,
  filetypes = { "templ", "astro", "javascript", "typescript", "react" },
  init_options = { userLanguages = { templ = "html" } },
})

lspconfig.html.setup({
  -- on_attach = on_attach,
  capabilities = Capabilities,
  filetypes = { "html", "templ" },
})

lspconfig.vtsls.setup({
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifier = "relative",
        importModuleSpecifierEnding = "minimal",
      },
    },
  },
})

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
vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme rose-pine")
