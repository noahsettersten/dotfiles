return {
  {
    'vim-test/vim-test',
    keys = {
      { ',t', "<cmd>TestFile<cr>", mode = { "n" }, desc = "Run tests for current file" },
      { ',T', "<cmd>TestNearest<cr>", mode = { "n" }, desc = "Run test under cursor" }
    },
    config = function()
      vim.g["VimuxOrientation"] = "h"
      vim.g["VimuxHeight"] = "40"
      vim.g["test#strategy"] = "vimux"

      -- vim.g["test#neovim#term_position"] = "vert"
      -- vim.g["test#strategy"] = "neovim"
    end
  },
}
