return {
  { 'johmsalas/text-case.nvim', config = true, keys = { 'ga' } },

  -- Trouble for diagnostics
  {
    'folke/trouble.nvim',
    keys = {
      { ' td', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'View diagnostics' },
      { ' tw', '<cmd>Trouble diagnostics toggle<cr>', desc = 'View workspace diagnostics' },
    },
    opts = { focus = true },
  },

  -- Show path to current file and LSP document symbols in winbar
  {
    'utilyre/barbecue.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'SmiteshP/nvim-navic' },
    config = true,
  },
  { 'nvim-lualine/lualine.nvim', config = true },
  { 'miversen33/sunglasses.nvim', opts = { filter_percent = 0.2, filter_type = 'SHADE' } },
  -- { 'nvim-zh/colorful-winsep.nvim', config = true },

  {
    'akinsho/toggleterm.nvim',
    keys = {
      { '<C-t>', '<CMD>ToggleTerm direction=float<CR>', mode = { 'n', 't' }, desc = 'Toggle terminal' },
    },
    config = true,
  },

  -- (Show available motions)
  -- { 'tris203/precognition.nvim', config = true },

  -- (Launch terminal tasks)
  -- { 'miroshQa/rittli.nvim' },

  -- (Dim exterior code via Treesitter) https://github.com/folke/twilight.nvim
  -- (Copy code line reference) https://github.com/prichrd/refgo.nvim

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
