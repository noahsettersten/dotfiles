-- Structure inspired by patterns in Folke's dotfiles: https://github.com/folke/dot/tree/master/config/nvim
-- Initial setup https://www.reddit.com/r/neovim/comments/1039iti/minimal_config_with_lazy_treesitter_lspzero/
require('config.bootstrap_lazy')

require('config.options')

require('lazy').setup('plugins', {
  performance = {
    reset_packpath = true,
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchitparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        -- "zipPlugin"
      }
    }
  }
})

-- vim.opt.signcolumn = "yes" -- otherwise it bounces in and out, not strictly needed though
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "ruby",
--   group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice
--   callback = function()
--     vim.lsp.start {
--       name = "standard",
--       -- cmd = { "~/.rbenv/shims/standardrb", "--lsp" },
--       cmd = { "~/.local/share/rtx/installs/ruby/3.2.2/lib/ruby/gems/3.2.0/gems/standard-1.30.1/exe/standardrb", "--lsp" },
--     }
--   end,
-- })

vim.cmd.colorscheme('catppuccin-macchiato')

require('config.mappings')

require('functions.go_to_package')
require('functions.toggle_hlsearch')
