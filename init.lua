require("config.lazy")

vim.filetype.add({ extension = { templ = "templ" } })

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

-- colors
local CursorLine = { bg = "#121212" }
local BackgroundLight = { bg = "#141414" }
local BackgroundDark = { bg = "#080808" }

local highlight_groups = {
  NormalFloat = BackgroundLight,
  NormalNC = BackgroundDark,
  Normal = BackgroundDark,
  CursorLine = CursorLine,
}

require("rose-pine").setup({
  styles = {
    transparency = true,
    italic = false,
  },
  highlight_groups = highlight_groups,
})

require("github-theme").setup({
  options = {
    -- transparent = true,
  },
  groups = {
    all = highlight_groups,
  },
})

vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme catppuccin-macchiato")
-- vim.cmd("colorscheme github_dark_default")
-- vim.cmd("colorscheme tokyonight-night")
