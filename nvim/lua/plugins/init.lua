return {
  -- { 'github/copilot.vim' },

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
}
