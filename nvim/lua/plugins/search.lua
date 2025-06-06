return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      { '<C-f>', '<cmd>Telescope find_files hidden=true noignore=true<cr>', desc = 'Search for file name' },
      { ',<C-f>', '<cmd>Telescope live_grep<cr>', desc = 'Search within files' },
      { ',<C-g>', '<cmd>Telescope git_status<cr>', desc = 'Search git modifications' },
      { ',<C-t>', '<cmd>Telescope tailiscope categories<cr>', desc = 'Search Tailwind class names' },
      { ',<C-h>', '<cmd>Telescope git_file_history<cr>', desc = 'View git history for file' },
    },
    config = function()
      require('telescope').setup {
        defaults = {
          -- Inspired by Thomas's additions: https://github.com/tomxkay/astronvim_config/blob/main/plugins/telescope.lua
          mappings = {
            i = { ['<c-l>'] = require('trouble.sources.telescope').open },
            n = { ['<c-l>'] = require('trouble.sources.telescope').open },
          },
        },
      }
    end,
  },

  -- Telescope plugins
  {
    'danielvolchek/tailiscope.nvim',
    config = function()
      require('telescope').load_extension 'tailiscope'
    end,
  },
  {
    'isak102/telescope-git-file-history.nvim',
    dependencies = { 'tpope/vim-fugitive' },
    config = function()
      require('telescope').load_extension 'git_file_history'
    end,
  },
}
