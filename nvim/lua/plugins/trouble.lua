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
      {
        ' tr',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        mode = { 'n' },
        desc = 'View LSP definitions / references',
      },

      -- { ' tq', '<cmd>Trouble quickfix<cr>', mode = { 'n' }, desc = 'View quickfix' },
      -- { ' tl', '<cmd>Trouble loclist<cr>', mode = { 'n' }, desc = 'View loclist' },
    },
    opts = {
      focus = true,
    },
  },
}
