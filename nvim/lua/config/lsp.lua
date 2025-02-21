-- Vim configuration
vim.opt.signcolumn = 'yes'
vim.diagnostic.config { virtual_text = true }

-- Configure LSP keymaps
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    -- https://github.com/VonHeikemen/lsp-zero.nvim#keybindings
    local mapping = require '../functions/lua_mapping'
    local opts = function(desc)
      return { buffer = event.buf, desc = desc }
    end

    -- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { buffer = bufnr, desc = 'Show details' })

    mapping.key('<leader>gd', 'vim.lsp.buf.definition()', opts 'Go to definition')
    mapping.key('<leader>gD', 'vim.lsp.buf.declaration()', opts 'Go to declaration')
    mapping.key('<leader>gi', 'vim.lsp.buf.implementation()', opts 'Go to implementation')
    mapping.key('<leader>go', 'vim.lsp.buf.type_definition()', opts 'Go to type definition')
    mapping.key('<leader>gr', 'vim.lsp.buf.references()', opts 'Show references')
    mapping.key('<leader>gs', 'vim.lsp.buf.signature_help()', opts 'Show signature help')
    mapping.key('<leader>gR', 'vim.lsp.buf.rename()', opts 'Rename symbol')

    mapping.key('[d', 'vim.diagnostic.goto_prev()', opts 'Go to previous')
    mapping.key(']d', 'vim.diagnostic.goto_next()', opts 'Go to next')

    -- I don't use these mappings
    -- vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', { buffer = bufnr, desc = 'Format file' })
    -- mapping.key('<F4>', 'vim.lsp.buf.code_action()', opts 'Code actions')

    -- mapping.key('<leader>gl', 'vim.diagnostic.open_float()', opts 'Open float')
  end,
})

-- Configure LSP servers
require('mason-lspconfig').setup {
  handlers = {
    lua_ls = function()
      require('lspconfig').lua_ls.setup {}
    end,
    yamlls = function()
      require('lspconfig').yamlls.setup { settings = { yaml = { keyOrdering = false } } }
    end,
    ts_ls = function()
      require('lspconfig').ts_ls.setup {
        on_init = function(client)
          client.server_capabilities.documentFormattingProvider = false
        end,
      }
    end,
  },
}

-- Configure LSP for Standard: https://github.com/testdouble/standard/wiki/IDE:-neovim

require('lspconfig').sourcekit.setup {
  capabilities = { workspace = { didChangeWatchedFiles = { dynamicRegistration = true } } },
}
