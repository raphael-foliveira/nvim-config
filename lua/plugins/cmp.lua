return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    opts.window = opts.window or {}
    opts.window.documentation = {
      border = "rounded",
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    }
    opts.experimental = {
      ghost_text = {
        hl_group = "CmpGhostText",
        enabled = true,
        modes = {
          n = true,
          i = true,
          c = false,
        },
      },
    }
  end,
  init = function()
    -- Dismiss completion menu on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        local cmp = require("cmp")
        if cmp.visible() then
          cmp.close()
        end
      end,
    })
  end,
} 