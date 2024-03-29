return {
  -- Git
  {
    'lewis6991/gitsigns.nvim',
    keys = {
      { '[g', '<CMD>Gitsigns prev_hunk<CR>', mode = { 'n' }, desc = 'Go to previous change' },
      { ']g', '<CMD>Gitsigns next_hunk<CR>', mode = { 'n' }, desc = 'Go to next change' },
    },
    config = true,
  },

  -- Fugitive provides features (particularly viewing the entire file's blame at once) that gitsigns doesn't cover: https://github.com/lewis6991/gitsigns.nvim/issues/508
  {
    'tpope/vim-fugitive',
    keys = {
      { ',gb', '<CMD>Git blame -w -M<CR>', mode = { 'n' }, desc = 'Show git blame for current file' },
      { ',gd', '<CMD>Gdiff<CR>', mode = { 'n' }, desc = 'Show git diff for current file' },
      { ',gst', '<CMD>Git<CR>', mode = { 'n' }, desc = 'Show git status' },
    },
  },

  -- GitHub PR review
  -- {
  --   'ldelossa/gh.nvim',
  --   dependencies = {
  --     {
  --       'ldelossa/litee.nvim',
  --       config = function()
  --         require('litee.lib').setup()
  --       end,
  --     },
  --   },
  --   config = function()
  --     require('litee.gh').setup()
  --   end,
  -- }
}
