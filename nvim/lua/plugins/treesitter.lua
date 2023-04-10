return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'elixir', 'lua', 'ruby', 'rust', 'go' },
        highlight = { enable = true }
      }
    end
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = true
  },
  {
    'HiPhish/nvim-ts-rainbow2',
    config = function()
      require("nvim-treesitter.configs").setup {
        rainbow = {
          enable = true,
          -- list of languages you want to disable the plugin for
          disable = { "jsx", "cpp" },
          -- Which query to use for finding delimiters
          query = 'rainbow-parens',
          -- Highlight the entire buffer all at once
          strategy = require 'ts-rainbow.strategy.global',
        }
      }
    end
  },
}
