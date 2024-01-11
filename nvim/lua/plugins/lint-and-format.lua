return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      require('lint').linters_by_ft = {
        javascript = { 'eslint', },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require('conform').setup({
        formatters_by_ft = {
          lua = { "stylua" },
          javascript = { { "prettierd", "prettier" } },
          -- elixir = { "mix" },
          -- ruby = { "standardrb" }
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      })
    end,
  }
}
