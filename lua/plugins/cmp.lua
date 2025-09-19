return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local orig_enabled = opts.enabled
    opts.enabled = function()
      local bt, ft = vim.bo.buftype, vim.bo.filetype
      -- disable in LSP rename prompt (often via dressing.nvim) and any prompt buffer
      if bt == "prompt" or ft == "DressingInput" or ft == "rename" then
        return false
      end
      -- preserve any existing enabled() logic from LazyVim
      if type(orig_enabled) == "function" then
        return orig_enabled()
      else
        return orig_enabled ~= false
      end
    end
    return opts
  end,
}
