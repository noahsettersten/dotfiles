-- Language-specific plugins
return {
  -- Typescript
  {
    'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn',
    config = true,
  },

  -- Folding for JSON (https://vi.stackexchange.com/a/10563)
  -- :set filetype=json
  -- :syntax on
  -- :set foldmethod=syntax

  {
    'fatih/vim-go',
    config = function()
      vim.g.go_def_mapping_enabled = 0
    end,
  },
}
