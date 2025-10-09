return {
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    keys = {
      { '[g', '<CMD>Gitsigns prev_hunk<CR>', desc = 'Go to previous change' },
      { ']g', '<CMD>Gitsigns next_hunk<CR>', desc = 'Go to next change' },
      { ',gb', '<CMD>Gitsigns blame<CR>', desc = 'Show git blame for current file' },
      -- { ',gl', '<CMD>Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle git blame for current line' },
    },
    opts = {},
  },

  -- https://github.com/VonHeikemen/lsp-zero.nvim?tab=readme-ov-file#quickstart-for-the-impatient
  'neovim/nvim-lspconfig',
  { 'saghen/blink.cmp', version = '1.*', opts = {} },

  {
    'hedyhli/outline.nvim',
    keys = { { '<Leader>gS', '<CMD>Outline<CR>', desc = 'Open sidebar of LSP symbols' } },
    opts = {},
  },

  -- Show path to current file and LSP document symbols in winbar
  {
    'utilyre/barbecue.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'SmiteshP/nvim-navic' },
    opts = {},
  },

  {
    'mfussenegger/nvim-lint',
    config = function()
      require('lint').linters_by_ft = {
        javascript = { 'eslint' },
        -- ruby = { 'rubocop' },
      }

      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },

  { 'tpope/vim-rails', filetype = { 'ruby', 'eruby', 'css' } },
  {
    'barrett-ruth/import-cost.nvim',
    filetype = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    build = 'sh install.sh yarn',
    opts = {},
  },

  -- {
  --   'fatih/vim-go',
  --   config = function()
  --     vim.g.go_def_mapping_enabled = 0
  --   end,
  -- },

  -- 'elixir-tools/elixir-tools.nvim',
}
