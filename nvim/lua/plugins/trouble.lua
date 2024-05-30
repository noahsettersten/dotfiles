-- Diagnostics
return {
  {
    'folke/trouble.nvim',
    branch = 'dev',
    keys = {
      {
        ' tr',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        mode = { 'n' },
        desc = 'View LSP references',
      },
      -- { ' tf', '<cmd>Trouble lsp_definitions<cr>', mode = { 'n' }, desc = 'View LSP definitions' },
      { ' td', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', mode = { 'n' }, desc = 'View diagnostics' },
      { ' tq', '<cmd>Trouble quickfix<cr>', mode = { 'n' }, desc = 'View quickfix' },
      { ' tl', '<cmd>Trouble loclist<cr>', mode = { 'n' }, desc = 'View loclist' },
      { ' tw', '<cmd>Trouble diagnostics toggle<cr>', mode = { 'n' }, desc = 'View workspace diagnostics' },
    },
  },
}
