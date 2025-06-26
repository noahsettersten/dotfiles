return {
  {
    'dynamotn/Navigator.nvim',
    keys = {
      { '<C-h>', '<CMD>NavigatorLeft<CR>', mode = { 'n', 't' }, desc = 'Move left one pane' },
      { '<C-j>', '<CMD>NavigatorDown<CR>', mode = { 'n', 't' }, desc = 'Move down one pane' },
      { '<C-k>', '<CMD>NavigatorUp<CR>', mode = { 'n', 't' }, desc = 'Move up one pane' },
      { '<C-l>', '<CMD>NavigatorRight<CR>', mode = { 'n', 't' }, desc = 'Move right one pane' },
    },
    config = true,
    -- opts = {},
  },

  -- {
  --   'mrjones2014/smart-splits.nvim',
  --   config = true,
  --   init = function()
  --     vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
  --     vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
  --     vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
  --     vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
  --     -- { '<C-h>', require('smart-splits').move_cursor_left, mode = { 'n', 't' } },
  --     -- { '<C-j>', require('smart-splits').move_cursor_down, mode = { 'n', 't' } },
  --     -- { '<C-k>', require('smart-splits').move_cursor_up, mode = { 'n', 't' } },
  --     -- { '<C-l>', require('smart-splits').move_cursor_right, mode = { 'n', 't' } },
  --   end,
  -- },

  'edkolev/tmuxline.vim',
  -- config = function()
  -- vim.cmd(':Tmuxline vim_statusline_1')
  -- end,
}
