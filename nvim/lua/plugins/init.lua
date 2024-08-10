return {
  -- { 'github/copilot.vim' },

  'catppuccin/nvim',

  {
    -- TODO: Perhaps replace with mini-clue: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-clue.md
    'folke/which-key.nvim',
    config = function()
      local wk = require 'which-key'
      wk.setup {}
      wk.add {
        { '<leader>g', group = 'LSP' },
      }
    end,
  },

  {
    'andymass/vim-matchup',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('nvim-treesitter.configs').setup {
        matchup = {
          enable = true,
          include_match_words = true,
        },
      }
    end,
  },

  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require('mini.comment').setup {
        mappings = {
          comment_line = '<leader>/',
        },
      }
      require('mini.files').setup()
    end,
  },
}
