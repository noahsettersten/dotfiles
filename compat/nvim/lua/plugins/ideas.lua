return {
  -- # General:
  -- (Start screen) https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-starter.md
  -- { 'mirlge/kak.nvim', event = 'VeryLazy' },
  -- { 'github/copilot.vim' },

  -- # File explorer:
  --! { 'stevearc/oil.nvim' },
  --! { 'tamago324/lir.nvim' },
  --! { 'SidOfc/carbon.nvim' },
  -- { 'https://github.com/lewis6991/brodir.nvim' },
  -- { 'kevinhwang91/rnvimr' },
  -- { 'Xuyuanp/yanil' },
  -- { 'luukvbaal/nnn.nvim' },
  -- { 'dinhhuy258/sfm.nvim' },

  -- {
  --   'echasnovski/mini.nvim',
  --   version = false,
  --   keys = { { ',md', '<CMD>lua MiniFiles.open()<CR>', desc = 'Toggle file explorer' } },
  --   config = function()
  --     require('mini.comment').setup {
  --       mappings = {
  --         comment_line = '<leader>/',
  --       },
  --     }
  --     -- require('mini.files').setup()
  --   end,
  -- },

  -- # Languages:
  -- (Manage curl requests)
  -- { 'oysandvik94/curl.nvim' },

  -- # LSP
  -- (Jump to next/previous LSP reference)
  -- { 'mawkler/refjump.nvim' }

  -- # Other utilities
  -- { 'nvim-treesitter/nvim-treesitter-context', config = true },

  -- (Copy code line reference)
  -- { 'https://github.com/prichrd/refgo.nvim' },

  -- {
  --   'aliqyan-21/wit.nvim',
  --   keys = {
  --     { '<Leader>sq', '<CMD>WitSearch<CR>', desc = 'Search the web' },
  --     { '<Leader>sv', '<CMD>WitSearchVisual<CR>', desc = 'Search the web with visual selection' },
  --     { '<Leader>sw', '<CMD>WitSearchWiki<CR>', desc = 'Search Wikipeda' },
  --   },
  --   config = true,
  -- },
}
