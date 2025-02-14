return {
  {
    'nvim-treesitter/nvim-treesitter',
    -- build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'elixir', 'lua', 'ruby', 'rust', 'go', 'typescript', 'swift', 'objc' },
        highlight = { enable = true },
      }
    end,
  },

  -- { 'nvim-treesitter/nvim-treesitter-context', config = true },

  'HiPhish/rainbow-delimiters.nvim',

  {
    'andymass/vim-matchup',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('nvim-treesitter.configs').setup {
        matchup = {
          enable = true,
          include_match_words = true,
        },
      }
    end,
  },
}
