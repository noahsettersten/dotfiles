return {
  -- https://github.com/rockerBOO/awesome-neovim
  -- { 'github/copilot.vim' },

  -- Colorschemes
  'catppuccin/nvim',
  -- 'sainnhe/sonokai',
  -- 'rebelot/kanagawa.nvim',
  -- 'whatyouhide/vim-gotham',

  --- General plugins
  {
    -- TODO: Perhaps replace with mini-clue: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-clue.md
    'folke/which-key.nvim',
    config = function()
      local wk = require 'which-key'
      wk.setup {}
      wk.register {
        ['<leader>g'] = { name = 'LSP' },
      }
    end,
  },

  {
    'akinsho/toggleterm.nvim',
    keys = {
      { '<C-t>', '<CMD>ToggleTerm direction=float<CR>', mode = { 'n', 't' }, desc = 'Toggle terminal' },
    },
    config = true,
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

  'JoosepAlviste/nvim-ts-context-commentstring',

  {
    'echasnovski/mini.comment',
    version = '*',
    config = function()
      require('mini.comment').setup {
        mappings = {
          comment_line = '<leader>/',
        },
      }
    end,
  },

  -- { 'folke/twilight.nvim' },
  -- /tris203/precognition.nvim
}
