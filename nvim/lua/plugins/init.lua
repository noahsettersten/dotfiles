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

  { 'folke/which-key.nvim', config = true },

  -- https://github.com/olexsmir/gopher.nvim

  -- { 'AndrewRadev/splitjoin.vim' },
  -- { 'roobert/tailwindcss-colorizer-cmp.nvim' },

  {
    'akinsho/toggleterm.nvim',
    keys = {
      { "<C-t>", "<CMD>ToggleTerm direction=float<CR>", mode = { "n", "t" }, desc = "Toggle terminal" }
    },
    config = true
  },

  {
    'numToStr/Comment.nvim',
    keys = {
      { " /", "<Plug>(comment_toggle_linewise_current)", mode = { "n", "v" }, desc = "Comment (linewise)" }
    },
    config = true
  },

  -- { 'weizheheng/ror.nvim' },

  -- Language specific
  {
    'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn',
    config = true
  }
}
