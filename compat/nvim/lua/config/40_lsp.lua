-- Vim configuration
vim.opt.signcolumn = 'yes'
vim.diagnostic.config { virtual_text = true }

-- Configure LSP keymaps
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    -- https://github.com/VonHeikemen/lsp-zero.nvim#keybindings
    local opts = function(desc)
      return { buffer = event.buf, desc = desc }
    end

    vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts 'Go to definition')
    vim.keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts 'Go to declaration')
    vim.keymap.set('n', '<leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts 'Go to type definition')
    vim.keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts 'Show signature help')

    -- Replaced in favor of built-in LSP mappings:
    -- K: Hover
    -- grn: Rename
    -- grr: References
    -- gri: Implementation
    -- gra: Code action
    -- [d / ]d: Move between diagnostics

    -- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { buffer = bufnr, desc = 'Show details' })
  end,
})

-- Enable LSP servers
vim.lsp.enable 'lua_ls'
vim.lsp.enable 'ruby_lsp'
vim.lsp.enable 'yamlls'
vim.lsp.enable 'syntax_tree'
vim.lsp.enable 'ts_ls'

-- require('lspconfig').yamlls.setup {
--   settings = { yaml = { keyOrdering = false } },
-- }
-- require('lspconfig').ts_ls.setup {
--   on_init = function(client)
--     client.server_capabilities.documentFormattingProvider = false
--   end,
-- }
