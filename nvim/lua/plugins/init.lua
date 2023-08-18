return {
  -- https://github.com/rockerBOO/awesome-neovim

  -- TODO:
  -- Set up nvim-cmp to require a tab to start inserting suggestions. This will make it easier to enter at the
  --   end of the line without filling in a suggestion.

  -- Colorschemes
  'catppuccin/nvim',
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

  { 'folke/which-key.nvim', config = true },


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

  {
    'terrortylor/nvim-comment',
    keys = {
      { ' /', '<CMD>CommentToggle<CR>', mode = { 'n', 'v' }, desc = 'Toggle comment' },
    },
    config = function()
      require('nvim_comment').setup()
    end,
  },
  -- {
  --   'numToStr/Comment.nvim',
  --   keys = {
  --     { " /", "<Plug>(comment_toggle_linewise_current)", mode = { "n", "v" }, desc = "Comment (linewise)" }
  --   },
  --   config = true
  -- },

  -- Language specific
  {
    'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn',
    config = true,
  },
  { "prisma/vim-prisma",    event = "BufRead" },
  -- https://github.com/olexsmir/gopher.nvim
  -- { 'weizheheng/ror.nvim' },
}
