-- Diagnostics
return {
  {
    'folke/trouble.nvim',
    keys = {
      {
        ' td',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        mode = { 'n' },
        desc = 'View diagnostics',
      },
      { ' tw', '<cmd>Trouble diagnostics toggle<cr>', mode = { 'n' }, desc = 'View workspace diagnostics' },
    },
    opts = {
      focus = true,
    },
  },
}
