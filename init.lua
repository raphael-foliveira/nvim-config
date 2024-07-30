require("config.lazy")

vim.filetype.add({ extension = { templ = "templ" } })

vim.cmd("GitBlameToggle")

local custom_format = function()
  if vim.bo.filetype == "templ" then
    local bufnr = vim.api.nvim_get_current_buf()
    local filename = vim.api.nvim_buf_get_name(bufnr)
    local cmd = "templ fmt " .. vim.fn.shellescape(filename)

    vim.fn.jobstart(cmd, {
      on_exit = function()
        -- Reload the buffer only if it's still the current buffer
        if vim.api.nvim_get_current_buf() == bufnr then
          vim.cmd("e!")
        end
      end,
    })
  else
    vim.lsp.buf.format()
  end
end

local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "<leader>lf", custom_format, opts)
end

Capabilities = require("cmp_nvim_lsp").default_capabilities(Capabilities)
local lspconfig = require("lspconfig")

lspconfig.templ.setup({
  on_attach = on_attach,
  capabilities = Capabilities,
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = Capabilities,
  filetypes = { "templ", "astro", "javascript", "typescript", "react" },
  init_options = { userLanguages = { templ = "html" } },
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = Capabilities,
  filetypes = { "html", "templ" },
})

lspconfig.htmx.setup({
  on_attach = on_attach,
  capabilities = Capabilities,
  filetypes = { "html", "templ" },
})

lspconfig.vtsls.setup({
  on_attach = on_attach,
  capabilities = Capabilities,
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifier = "relative",
      },
    },
  },
})

require("rose-pine").setup({
  styles = {
    italic = false,
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

-- vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme catppuccin-mocha")
-- vim.cmd("colorscheme github_dark_default")
-- vim.cmd("colorscheme tokyonight-night")
