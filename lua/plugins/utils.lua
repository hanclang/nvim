return {
  {
    "rhysd/accelerated-jk",
    config = function()
      vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
      vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
    end,
  },
  {
    "folke/persistence.nvim",
    config = function()
      require("persistence").setup()
      vim.keymap.set("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]])
      vim.keymap.set("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true})<cr>]])
      vim.keymap.set("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]])
    end
  },
  {
    "windwp/nvim-autopairs",
    opts = {
      enable_check_bracket_line = false,
    },
  },
  {
    "ethanholz/nvim-lastplace",
    config = true,
  },
  {
    "folke/flash.nvim",
    config = function()
      require("flash").setup()
      vim.keymap.set({ "n", "x", "o" }, "s",
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end
      )
      vim.keymap.set({ "n", "x", "o" }, "S",
        function()
          require("flash").treesitter()
        end
      )
      vim.keymap.set({ "o" }, "r",
        function()
          require("flash").remote()
        end
      )
      vim.keymap.set({ "o", "x" }, "R",
        function()
          require("flash").treesitter_search()
        end
      )
    end,
  },
  {
    "kamykn/spelunker.vim",
    config = function()
      vim.g.spelunker_check_type = 2
    end
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        default_component_configs = {
          indent = { padding = 0 },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            folder_empty_open = "",
            default = "󰈙",
          },
          modified = { symbol = "" },
          git_status = {
            symbols = {
              added = "",
              deleted = "",
              modified = "",
              renamed = "➜",
              untracked = "★",
              ignored = "◌",
              unstaged = "✗",
              staged = "✓",
              conflict = "",
            },
          },
        },
      })
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "folke/which-key.nvim",
    config = true,
  },
  {
    'echasnovski/mini.ai',
    config = true,
  },
  {
    "echasnovski/mini.comment",
    config = true,
  },
  {
    "s1n7ax/nvim-window-picker",
    config = function()
      require("window-picker").setup({
        filter_rules = {
          include_current_win = true,
          bo = {
            filetype = { "fidget", "neo-tree" }
          }
        }
      })
      vim.keymap.set("n",
        "<c-w>p",
        function()
          local window_number = require('window-picker').pick_window()
          if window_number then vim.api.nvim_set_current_win(window_number) end
        end
      )
    end
  },
  {'akinsho/toggleterm.nvim', version = "*", config = true},
}
