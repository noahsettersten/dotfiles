return {
  -- Show path to current file and LSP document symbols in winbar
  {
    'utilyre/barbecue.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons',
    },
    config = true,
  },

  {
    'nvim-lualine/lualine.nvim',
    -- dependencies = 'nvim-tree/nvim-web-devicons',
    config = true,
  },

  { 'nvim-zh/colorful-winsep.nvim', config = true },

  {
    'miversen33/sunglasses.nvim',
    config = function()
      require('sunglasses').setup {
        filter_percent = 0.2,
        filter_type = 'SHADE',
      }
    end,
  },
}
