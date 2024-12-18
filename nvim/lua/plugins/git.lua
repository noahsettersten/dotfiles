return {
  -- Git
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    keys = {
      { '[g', '<CMD>Gitsigns prev_hunk<CR>', mode = { 'n' }, desc = 'Go to previous change' },
      { ']g', '<CMD>Gitsigns next_hunk<CR>', mode = { 'n' }, desc = 'Go to next change' },
      { ',gb', '<CMD>Gitsigns blame<CR>', mode = { 'n' }, desc = 'Show git blame for current file' },
      {
        ',gl',
        '<CMD>Gitsigns toggle_current_line_blame<CR>',
        mode = { 'n' },
        desc = 'Toggle git blame for current line',
      },
    },
    config = true,
  },

  -- https://www.joshmedeski.com/posts/github-in-the-terminal/
}
