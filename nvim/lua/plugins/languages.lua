-- Language-specific plugins
return {
  -- Typescript
  {
    'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn',
    config = true,
  },

  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  },

  -- {
  --   'nabekou29/js-i18n.nvim',
  --   dependencies = {
  --     'neovim/nvim-lspconfig',
  --     'nvim-treesitter/nvim-treesitter',
  --     'nvim-lua/plenary.nvim',
  --   },
  --   event = { 'BufReadPre', 'BufNewFile' },
  --   opts = {
  --     primary_language = { 'en' },
  --   },
  -- },
}
