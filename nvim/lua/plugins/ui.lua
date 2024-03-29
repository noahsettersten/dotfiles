return {
  -- Show path to current file and LSP document symbols in winbar
  {
    'utilyre/barbecue.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons'
    },
    config = true
  },


  {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = true
    -- config = function()
    -- require("lualine").setup {
    -- section = {
    -- lualine_c = {
    -- require("auto-session-library").current_session_name
    -- }
    -- }
    -- }
    -- end
  },

  {
    'nvim-zh/colorful-winsep.nvim',
    config = function()
      require('colorful-winsep').setup({
        -- create_event = function()
        --   local win_n = require('colorful-winsep.utils').calculate_number_windows()
        --   if win_n == 2 then
        --     local win_id = vim.fn.win_getid(vim.fn.winnr('h'))
        --     local filetype = api.nvim_buf_get_option(vim.api.nvim_win_get_buf(win_id), 'filetype')
        --     if filetype == 'NvimTree' then
        --       colorful_winsep.NvimSeparatorDel()
        --     end
        --   end
        -- end
      })
    end
  },

  {
    'miversen33/sunglasses.nvim',
    config = function()
      require("sunglasses").setup({
        filter_percent = 0.2,
        filter_type = "SHADE"
      })
    end,
  },
}
