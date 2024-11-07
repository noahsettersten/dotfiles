return {
  -- { 'github/copilot.vim' },

  -- https://github.com/mirlge/kak.nvim
  -- { 'mirlge/kak.nvim' },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
      local wk = require 'which-key'
      wk.setup {}
      wk.add {
        { '<leader>g', group = 'LSP' },
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

  { 'johmsalas/text-case.nvim', config = true, keys = { 'ga' } },
}
