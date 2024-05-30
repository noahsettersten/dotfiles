return {
  -- https://github.com/rockerBOO/awesome-neovim

  -- { 'github/copilot.vim' },

  -- TODO:
  -- Set up nvim-cmp to require a tab to start inserting suggestions. This will make it easier to enter at the
  --   end of the line without filling in a suggestion.

  -- Colorschemes
  'catppuccin/nvim',
  -- https://github.com/dgox16/oldworld.nvim
  -- 'sainnhe/sonokai',
  -- 'rebelot/kanagawa.nvim',
  -- 'whatyouhide/vim-gotham',
  -- 'savg/melange-nvim',
  -- 'AlexvZyl/nordic.nvim',
  -- { 'nyngwang/nvimgelion' },
  -- {
  --   "rose-pine/nvim",
  --   name = "rose-pine",
  --   config = function()
  --     require("rose-pine").setup {
  --       dark_variant = "moon",
  --     }
  --   end,
  -- },

  -- /tris203/precognition.nvim
  {
    'folke/which-key.nvim',
    config = function()
      local wk = require 'which-key'
      wk.setup {}
      wk.register {
        ['<leader>g'] = { name = 'LSP' },
      }
    end,
  },
  -- TODO: Perhaps replace with mini-clue: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-clue.md

  -- { 'AndrewRadev/splitjoin.vim' },
  -- { 'roobert/tailwindcss-colorizer-cmp.nvim' },

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

  { 'JoosepAlviste/nvim-ts-context-commentstring' },
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

  { 'folke/twilight.nvim' },
  -- { "xiyaowong/transparent.nvim" },

  -- Language specific
  {
    'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn',
    config = true,
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  },
  { 'davidmh/mdx.nvim', config = true, dependencies = { 'nvim-treesitter/nvim-treesitter' } },
  -- https://github.com/olexsmir/gopher.nvim
  -- { 'weizheheng/ror.nvim' },

  -- Manage iOS simulators
  -- { 'terje/simctl.nvim' },
}
