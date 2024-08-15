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
}
