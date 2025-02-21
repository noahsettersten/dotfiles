-- See https://www.josean.com/posts/neovim-linting-and-formatting
return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      require('lint').linters_by_ft = {
        javascript = { 'eslint' },
        swift = { 'swiftlint' },
      }

      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },

  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('conform').setup {
        formatters_by_ft = {
          lua = { 'stylua' },
          javascript = { 'prettier' },
          typescript = { 'prettier' },
          javascriptreact = { 'prettier' },
          typescriptreact = { 'prettier' },
          json = { 'prettier' },
          yaml = { 'prettier' },
          elixir = { 'mix' },
          go = { 'gofmt' },
          -- swift = { 'swiftformat' },
          -- ruby = { "standardrb" }
        },
        notify_on_error = true,
        format = { quiet = false },
        format_on_save = function()
          -- Disable with a global variable
          if vim.g.disable_autoformat then
            return
          end

          return { lsp_fallback = true, async = false }
        end,
      }

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
