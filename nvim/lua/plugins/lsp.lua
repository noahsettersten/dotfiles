return {
  {
    'hedyhli/outline.nvim',
    keys = {
      { '<Leader>gS', '<CMD>Outline<CR>', mode = { 'n' }, desc = 'Open sidebar of LSP symbols' },
    },
    config = function()
      require('outline').setup {
        symbols = {
          icon_fetcher = function(kind)
            return kind:sub(1, 1)
          end,
        },
      }
    end,
  },
  {
    -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/lsp.md#you-might-not-need-lsp-zero
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      -- LSP support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      -- local lsp_zero = require('lsp-zero').preset('recommended')
      local lsp_zero = require 'lsp-zero'

      -- Configure LSP servers
      -- Automatically install language servers
      require('mason').setup {}
      require('mason-lspconfig').setup {
        ensure_installed = { 'elixirls', 'lua_ls', 'ruby_lsp', 'tailwindcss', 'tsserver' },
        handlers = {
          lsp_zero.default_setup,
          lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
          end,
          yamlls = function()
            require('lspconfig').yamlls.setup {
              settings = {
                yaml = {
                  keyOrdering = false,
                },
              },
            }
          end,
          tsserver = function()
            require('lspconfig').tsserver.setup {
              on_init = function(client)
                client.server_capabilities.documentFormattingProvider = false
              end,
            }
          end,
          --          ruby_lsp = function()
          --            require('lspconfig').ruby_lsp.setup({
          --              on_init = function(client)
          --                client.server_capabilities.documentFormattingProvider = false
          --                client.server_capabilities.documentFormattingRangeProvider = false
          --              end
          --            })
          --          end,
          --          solargraph = function()
          --            -- require('lspconfig').solargraph.setup({
          --            --   on_init = function(client)
          --            --     client.server_capabilities.documentFormattingProvider = false
          --            --     client.server_capabilities.documentFormattingRangeProvider = false
          --            --   end
          --            -- })
          --          end,
          --          standardrb = function()
          --            require('lspconfig').standardrb.setup {}
          --          end
        },
      }

      -- Configure keymaps
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps { buffer = bufnr, preserve_mappings = false }

        -- require('lsp-format').on_attach(client, bufnr)

        -- https://github.com/VonHeikemen/lsp-zero.nvim#keybindings
        -- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { buffer = bufnr, desc = 'Show details' })
        vim.keymap.set(
          'n',
          '<leader>gd',
          '<cmd>lua vim.lsp.buf.definition()<cr>',
          { buffer = bufnr, desc = 'Go to definition' }
        )
        vim.keymap.set(
          'n',
          '<leader>gD',
          '<cmd>lua vim.lsp.buf.declaration()<cr>',
          { buffer = bufnr, desc = 'Go to declaration' }
        )
        vim.keymap.set(
          'n',
          '<leader>gi',
          '<cmd>lua vim.lsp.buf.implementation()<cr>',
          { buffer = bufnr, desc = 'Go to implementation' }
        )
        vim.keymap.set(
          'n',
          '<leader>go',
          '<cmd>lua vim.lsp.buf.type_definition()<cr>',
          { buffer = bufnr, desc = 'Go to type definition' }
        )
        vim.keymap.set(
          'n',
          '<leader>gr',
          '<cmd>lua vim.lsp.buf.references()<cr>',
          { buffer = bufnr, desc = 'Show references' }
        )
        vim.keymap.set(
          'n',
          '<leader>gs',
          '<cmd>lua vim.lsp.buf.signature_help()<cr>',
          { buffer = bufnr, desc = 'Show signature help' }
        )
        vim.keymap.set(
          'n',
          '<leader>gR',
          '<cmd>lua vim.lsp.buf.rename()<cr>',
          { buffer = bufnr, desc = 'Rename symbol' }
        )
        vim.keymap.set(
          { 'n', 'x' },
          '<F3>',
          '<cmd>lua vim.lsp.buf.format({async = true})<cr>',
          { buffer = bufnr, desc = 'Format file' }
        )
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', { buffer = bufnr, desc = 'Code actions' })

        vim.keymap.set(
          'n',
          '<leader>gl',
          '<cmd>lua vim.diagnostic.open_float()<cr>',
          { buffer = bufnr, desc = 'Open float' }
        )
        vim.keymap.set(
          'n',
          '[d',
          '<cmd>lua vim.diagnostic.goto_prev()<cr>',
          { buffer = bufnr, desc = 'Go to previous' }
        )
        vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', { buffer = bufnr, desc = 'Go to next' })
      end)

      -- Configure completion
      local cmp = require 'cmp'
      local cmp_format = require('lsp-zero').cmp_format()
      cmp.setup {
        formatting = cmp_format,
        mapping = cmp.mapping.preset.insert {
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<CR>'] = cmp.mapping.confirm { select = false },
        },
      }

      -- lsp_zero.setup_nvim_cmp({
      --   mapping = lsp_zero.defaults.cmp_mappings({
      --     -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v1.x/doc/md/autocomplete.md#change-default-mapping
      --     -- https://duckduckgo.com/?t=ffab&q=neovim+mapping+control+enter&ia=web
      --
      --     -- ['<C-CR>'] = cmp.mapping.complete(),
      --     -- ['<CR>'] = vim.NIL,
      --     ['<CR>'] = cmp.mapping.confirm({ select = false })
      --   })
      -- })

      -- lsp_zero.setup()
      vim.diagnostic.config { virtual_text = true }
    end,
  },
}
