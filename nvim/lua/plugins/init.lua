return {
  -- TODO:
  -- Set up nvim-cmp to require a tab to start inserting suggestions. This will make it easier to enter at the
  --   end of the line without filling in a suggestion.
  -- Colorschemes
  'catppuccin/nvim',
  'AlexvZyl/nordic.nvim',
  'sainnhe/sonokai',
  'rebelot/kanagawa.nvim',
  -- 'savg/melange-nvim',

  { 'folke/which-key.nvim', config = true },

  -- { 'AndrewRadev/splitjoin.vim' },
  -- { 'roobert/tailwindcss-colorizer-cmp.nvim' },

  { 'akinsho/toggleterm.nvim',
    keys = {
      { "<C-t>", "<CMD>ToggleTerm direction=float<CR>", mode = { "n", "t" }, desc = "Toggle terminal" }
    },
    config = true
  },

  { 'numToStr/Comment.nvim',
    keys = {
      { " /", "<Plug>(comment_toggle_linewise_current)", mode = { "n", "v" }, desc = "Comment (linewise)" }
    },
    config = true
  },

  -- { 'weizheheng/ror.nvim' },

  -- Language specific
  { 'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn',
    config = true
  }
}
