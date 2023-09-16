return {
  {
    "akinsho/bufferline.nvim",
    config = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
      }
    end
  },
  {
    -- git signs highlights text that has changed since the list
    -- git commit, and also lets you interactively stage & unstage
    -- hunks in a commit.
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup({
        signs = {
          add          = { text = "" },
          change       = { text = "" },
          delete       = { text = "" },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },
      })
    end
  },
  {
    "goolord/alpha-nvim",
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  },
  {
    "RRethy/vim-illuminate",
    config = function()
      require('illuminate').configure()
    end
  },
}
