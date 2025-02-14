-- Diagnostics
return {
  {
    'folke/trouble.nvim',
    keys = {
      { ' td', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'View diagnostics' },
      { ' tw', '<cmd>Trouble diagnostics toggle<cr>', desc = 'View workspace diagnostics' },
    },
    opts = {
      focus = true,
    },
  },
}
