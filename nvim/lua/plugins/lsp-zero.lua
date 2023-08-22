return {
  {
    -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/lsp.md#you-might-not-need-lsp-zero
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
      local lsp = require('lsp-zero').preset('recommended')

      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr, preserve_mappings = false })

        require('lsp-format').on_attach(client, bufnr)

        -- https://github.com/VonHeikemen/lsp-zero.nvim#keybindings
        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { buffer = bufnr, desc = "Show details" })
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { buffer = bufnr, desc = "Go to definition" })
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>',
          { buffer = bufnr, desc = "Go to declaration" })
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>',
          { buffer = bufnr, desc = "Go to implementation" })
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>',
          { buffer = bufnr, desc = "Go to type definition" })
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', { buffer = bufnr, desc = "Show references" })
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>',
          { buffer = bufnr, desc = "Show signature help" })
        vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', { buffer = bufnr, desc = "Rename symbol" })
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>',
          { buffer = bufnr, desc = "Format file" })
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', { buffer = bufnr, desc = "Code actions" })

        vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', { buffer = bufnr, desc = "Open float" })
        vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', { buffer = bufnr, desc = "Go to previous" })
        vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', { buffer = bufnr, desc = "Go to next" })
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
