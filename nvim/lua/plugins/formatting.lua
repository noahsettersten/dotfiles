-- See https://www.josean.com/posts/neovim-linting-and-formatting
return {
  { 'johmsalas/text-case.nvim', opts = {}, keys = { 'ga' } },

  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        -- elixir = { 'mix' },
        go = { 'gofmt' },
        -- ruby = { "standardrb" }
      },
      format_on_save = function()
        -- Disable with a global variable
        if vim.g.disable_autoformat then
          return
        end

        return { lsp_fallback = true, async = false }
      end,
    },
    init = function()
      vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

      -- Commands to toggle format-on-save from:
      -- https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md#command-to-toggle-format-on-save
      vim.api.nvim_create_user_command('FormatDisable', function()
        vim.g.disable_autoformat = true
      end, { desc = 'Disable autoformat-on-save' })

      vim.api.nvim_create_user_command('FormatEnable', function()
        vim.g.disable_autoformat = false
      end, { desc = 'Re-enable autoformat-on-save' })
    end,
  },
}
