-- Ideas: https://github.com/rockerBOO/awesome-neovim

return {
  -- (Start screen) https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-starter.md
  -- { 'github/copilot.vim' },

  -- { 'mirlge/kak.nvim', event = 'VeryLazy' },

  -- (Show available motions)
  { 'tris203/precognition.nvim' },

  -- (Show available keybinds)
  -- :KeyAnalyzer <leader> or :KeyAnalyzer <C- or :KeyAnalyzer <M-
  { 'meznaric/key-analyzer.nvim' },

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

  {
    'aliqyan-21/wit.nvim',
    keys = {
      { '<Leader>sq', '<CMD>WitSearch ', mode = { 'n' }, desc = 'Search the web' },
      { '<Leader>sv', '<CMD>WitSearchVisual<CR>', mode = { 'n' }, desc = 'Search the web with visual selection' },
      { '<Leader>sw', '<CMD>WitSearchWiki ', mode = { 'n' }, desc = 'Search Wikipeda' },
    },
    config = true,
  },
}
