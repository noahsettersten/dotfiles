return {
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
      { 'lukas-reineke/lsp-format.nvim', config = true }
    },
    config = function()
      local lsp = require('lsp-zero')
      lsp.preset('recommended')

      lsp.on_attach(function(client, bufnr)
        require('lsp-format').on_attach(client, bufnr)
      end)
      lsp.nvim_workspace()

      local cmp = require('cmp')
      lsp.setup_nvim_cmp({
        mapping = lsp.defaults.cmp_mappings({
          -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v1.x/doc/md/autocomplete.md#change-default-mapping
          -- https://duckduckgo.com/?t=ffab&q=neovim+mapping+control+enter&ia=web

          -- ['<C-CR>'] = cmp.mapping.complete(),
          -- ['<CR>'] = vim.NIL,
          ['<CR>'] = cmp.mapping.confirm({ select = false })
        })
      })

      require('lspconfig').yamlls.setup({
        settings = {
          yaml = {
            keyOrdering = false
          }
        }
      })

      lsp.setup()
      vim.diagnostic.config { virtual_text = true }
    end
  }
}
