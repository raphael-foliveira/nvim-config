return {
  { "f-person/git-blame.nvim" },
  {

    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set(
        { "n", "v" },
        "<leader>xe",
        require("nvim-emmet").wrap_with_abbreviation
      )
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
  },
  { "ThePrimeagen/vim-be-good" },
  { "tpope/vim-fugitive" },
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>ue",
        function()
          require("edgy").toggle()
        end,
        desc = "Edgy Toggle",
      },
    -- stylua: ignore
    { "<leader>uE", function() require("edgy").select() end, desc = "Edgy Select Window" },
    },
    opts = function()
      return {
        bottom = {
          {
            ft = "toggleterm",
            size = { height = 0.4 },
            filter = function(_, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          {
            ft = "noice",
            size = { height = 0.4 },
            filter = function(_, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          {
            ft = "lazyterm",
            title = "LazyTerm",
            size = { height = 0.4 },
            filter = function(buf)
              return not vim.b[buf].lazyterm_cmd
            end,
          },
          "Trouble",
          { ft = "qf", title = "QuickFix" },
          {
            ft = "help",
            size = { height = 20 },
            -- don't open help files in edgy that we're editing
            filter = function(buf)
              return vim.bo[buf].buftype == "help"
            end,
          },
          { title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
          {
            title = "Neotest Output",
            ft = "neotest-output-panel",
            size = { height = 15 },
          },
        },
        left = {
          {
            title = "Neo-Tree",
            ft = "neo-tree",
            filter = function(buf)
              return vim.b[buf].neo_tree_source == "filesystem"
            end,
            pinned = true,
            open = function()
              require("neo-tree.command").execute({ dir = LazyVim.root() })
            end,
            size = { height = 0.5 },
          },
          "neo-tree",
        },
        keys = {
          -- increase width
          ["<c-Right>"] = function(win)
            win:resize("width", 2)
          end,
          -- decrease width
          ["<c-Left>"] = function(win)
            win:resize("width", -2)
          end,
          -- increase height
          ["<c-Up>"] = function(win)
            win:resize("height", 2)
          end,
          -- decrease height
          ["<c-Down>"] = function(win)
            win:resize("height", -2)
          end,
        },
      }
    end,
  },
}
