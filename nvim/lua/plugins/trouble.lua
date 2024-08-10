-- Diagnostics
return {
  {
    'folke/trouble.nvim',
    keys = {
      {
        ' tr',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        mode = { 'n' },
        desc = 'View LSP definitions / references',
      },
      {
        ' td',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        mode = { 'n' },
        desc = 'View diagnostics',
      },
      { ' tw', '<cmd>Trouble diagnostics toggle<cr>', mode = { 'n' }, desc = 'View workspace diagnostics' },

      { ' tq', '<cmd>Trouble quickfix<cr>', mode = { 'n' }, desc = 'View quickfix' },
      { ' tl', '<cmd>Trouble loclist<cr>', mode = { 'n' }, desc = 'View loclist' },
    },
    opts = {
      focus = true,
    },
  },

  -- {
  --   'folke/todo-comments.nvim',
  --   dependencies = { 'nvim-lua/plenary.nvim' },
  --   opts = {
  --     keywords = {
  --       TODO = { icon = '🗃', color = 'info' },
  --       TODO_API = { icon = '🔗', color = 'info', alt = { 'TODO(API)' } },
  --       FIXME = { icon = '🔥', color = 'error' },
  --       NOTE = { icon = '📔', color = 'hint', alt = { 'INFO' } },
  --     },
  --   },
  --   config = true,
  -- },
}
