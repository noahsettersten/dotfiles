return {
  -- Tmux interaction
  { 'numToStr/Navigator.nvim',
    keys = {
      { "<C-h>", "<CMD>NavigatorLeft<CR>", mode = { "n" }, desc = "Move left one pane" },
      { "<C-j>", "<CMD>NavigatorDown<CR>", mode = { "n" }, desc = "Move down one pane" },
      { "<C-k>", "<CMD>NavigatorUp<CR>", mode = { "n" }, desc = "Move up one pane" },
      { "<C-l>", "<CMD>NavigatorRight<CR>", mode = { "n" }, desc = "Move right one pane" }
    },
    config = true
  },
  { 'benmills/vimux' },
  { 'edkolev/tmuxline.vim',
    config = function()
      -- vim.cmd(':Tmuxline vim_statusline_1')
    end
  }
}
