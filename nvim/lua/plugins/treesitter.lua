return {
  {
    'nvim-treesitter/nvim-treesitter',
    -- build = ':TSUpdate',
    opts = {
      ensure_installed = { 'elixir', 'lua', 'ruby', 'rust', 'go', 'typescript', 'swift', 'objc' },
      highlight = { enable = true },
    },
  },

  'HiPhish/rainbow-delimiters.nvim',

  -- { 'nvim-treesitter/nvim-treesitter-context', config = true },

  -- {
  --   'andymass/vim-matchup',
  --   dependencies = { 'nvim-treesitter/nvim-treesitter' },
  --   config = function()
  --     require('nvim-treesitter.configs').setup {
  --       matchup = {
  --         enable = true,
  --         include_match_words = true,
  --       },
  --     }
  --   end,
  -- },
}
