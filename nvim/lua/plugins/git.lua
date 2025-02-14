return {
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    keys = {
      { '[g', '<CMD>Gitsigns prev_hunk<CR>', desc = 'Go to previous change' },
      { ']g', '<CMD>Gitsigns next_hunk<CR>', desc = 'Go to next change' },
      { ',gb', '<CMD>Gitsigns blame<CR>', desc = 'Show git blame for current file' },
      { ',gl', '<CMD>Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle git blame for current line', },
    },
    config = true,
  },
}
