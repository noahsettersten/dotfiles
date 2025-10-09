return {
  {
    'vim-test/vim-test',
    dependencies = { 'preservim/vimux' },
    keys = {
      { ',t', '<cmd>TestFile<cr>', desc = 'Run tests for current file' },
      { ',T', '<cmd>TestNearest<cr>', desc = 'Run test under cursor' },
    },
    config = function()
      vim.g['VimuxOrientation'] = 'h'
      vim.g['VimuxHeight'] = '40'
      vim.g['test#strategy'] = 'vimux'

      -- vim.g['test#neovim#term_position'] = 'vert'
      -- vim.g['test#strategy'] = 'neovim'
    end,
  },
}
