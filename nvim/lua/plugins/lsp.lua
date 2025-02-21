-- TODO: Set up nvim-cmp to require a tab to start inserting suggestions. This will make it easier to press enter at
-- the end of the line without filling in a suggestion.
return {
  {
    'williamboman/mason.nvim',
    dependencies = {
      { 'williamboman/mason-lspconfig.nvim' },
      { 'Zeioth/mason-extra-cmds', opts = {} },
    },
    cmd = { 'Mason', 'MasonUpdateAll' },
    config = true,
  },

  -- https://github.com/VonHeikemen/lsp-zero.nvim?tab=readme-ov-file#quickstart-for-the-impatient
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    },
    config = function()
      -- General LSP setup. Language server-specific configuration is in config/lsp.lua
      local lspconfig_defaults = require('lspconfig').util.default_config
      lspconfig_defaults.capabilities =
        vim.tbl_deep_extend('force', lspconfig_defaults.capabilities, require('cmp_nvim_lsp').default_capabilities())

      -- Configure completion
      local cmp = require 'cmp'
      cmp.setup {
        sources = { name = 'nvim_lsp' },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert {
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<CR>'] = cmp.mapping.confirm { select = false },
        },
      }
    end,
  },

  {
    'hedyhli/outline.nvim',
    keys = { { '<Leader>gS', '<CMD>Outline<CR>', desc = 'Open sidebar of LSP symbols' } },
    opts = {
      symbols = {
        -- Use letters for icons
        icon_fetcher = function(kind)
          return kind:sub(1, 1)
        end,
      },
    },
  },

  -- (Jump to next/previous LSP reference) https://github.com/mawkler/refjump.nvim
}
