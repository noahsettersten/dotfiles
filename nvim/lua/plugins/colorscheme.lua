return {
  {
    'catppuccin/nvim',
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
      -- vim.cmd.colorscheme 'catppuccin-latte'
    end,
  },

  {
    'ramojus/mellifluous.nvim',
    -- config = function()
    --   vim.cmd.colorscheme 'modus'
    -- end,
  },
  -- { 'cvigilv/patana.nvim' },
  -- { 'yorik1984/newpaper.nvim' },
  -- { 'EdenEast/nightfox.nvim' },
  { 'yorickpeterse/vim-paper' },
}
