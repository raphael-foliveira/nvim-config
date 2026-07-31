return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      if type(opts.ensure_installed) == "table" and not vim.tbl_contains(opts.ensure_installed, "templ") then
        table.insert(opts.ensure_installed, "templ")
      end
    end,
  },
}
