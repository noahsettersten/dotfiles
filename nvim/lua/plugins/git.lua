return {
  -- Git
  { 'lewis6991/gitsigns.nvim', config = true },

  -- Fugitive provides features (particularly viewing the entire file's blame at once) that gitsigns doesn't cover: https://github.com/lewis6991/gitsigns.nvim/issues/508
  { 'tpope/vim-fugitive',
    keys = {
      { ',gb',  '<CMD>Git blame -w -M<CR>', mode = { "n" }, desc = "Show git blame for current file" },
      { ',gd',  '<CMD>Gdiff<CR>',           mode = { "n" }, desc = "Show git diff for current file" },
      { ',gst', '<CMD>Git<CR>',             mode = { "n" }, desc = "Show git status" },
    }
  },
}
