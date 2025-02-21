-- Ideas: https://github.com/rockerBOO/awesome-neovim

return {
  -- Colorscheme (others: 'sainnhe/sonokai', 'rebelot/kanagawa.nvim', 'whatyouhide/vim-gotham')
  {
    'catppuccin/nvim',
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },

  -- (Start screen) https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-starter.md

  -- { 'github/copilot.vim' },

  -- { 'mirlge/kak.nvim', event = 'VeryLazy' },

  -- (Show available keybinds)
  -- :KeyAnalyzer <leader> or :KeyAnalyzer <C- or :KeyAnalyzer <M-
  { 'meznaric/key-analyzer.nvim', config = true },

  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
      local wk = require 'which-key'
      wk.setup {}
      wk.add {
        { '<leader>g', group = 'LSP' },
        { '<leader>t', group = 'Diagnostics with Trouble' },
        { '<leader>s', group = 'Internet Search' },
        { '<leader>x', group = 'Xcode' },
      }
    end,
  },

  { 'ethanholz/nvim-lastplace', config = true },
}
