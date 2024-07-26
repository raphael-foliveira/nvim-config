local options = {
  stages = "static",
  timeout = 3000,
  max_height = function()
    return math.floor(vim.o.lines * 0.75)
  end,
  max_width = function()
    return math.floor(vim.o.columns * 0.75)
  end,
  on_open = function(win)
    vim.api.nvim_win_set_config(win, { zindex = 100 })
  end,
}
return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss All Notifications",
    },
    {
      "<leader>uN",
      -- toggle notifications off or info
      function()
        if vim.g.notify_enabled == nil then
          vim.g.notify_enabled = true
        end

        local notify = require("notify")
        if vim.g.notify_enabled then
          notify("Disabling notifications...")
          options.level = "off"
          notify.setup(options)
          vim.g.notify_enabled = false
        else
          options.level = "info"
          notify.setup(options)
          vim.g.notify_enabled = true
          notify("Notifications are now enabled", "info")
        end
      end,
      desc = "Toggle Notifications",
    },
  },
  opts = {
    stages = "static",
    timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  init = function()
    -- when noice is not enabled, install notify on VeryLazy
    if not LazyVim.has("noice.nvim") then
      LazyVim.on_very_lazy(function()
        vim.notify = require("notify")
      end)
    end
  end,
}
