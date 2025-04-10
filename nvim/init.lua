-- Structure inspired by patterns in Folke's dotfiles: https://github.com/folke/dot/tree/master/config/nvim
-- Initial setup https://www.reddit.com/r/neovim/comments/1039iti/minimal_config_with_lazy_treesitter_lspzero/
require 'config.bootstrap_lazy'
require 'config.options'
require('lazy').setup('plugins', {
  rocks = { enabled = false },
  performance = {
    reset_packpath = true,
    rtp = {
      -- "zipPlugin"
      disabled_plugins = { 'gzip', 'matchit', 'matchitparen', 'netrwPlugin', 'tarPlugin', 'tohtml', 'tutor' },
    },
  },
})

require 'config.mappings'
require 'config.autocmds'
require 'config.lsp'
-- require 'functions.go_to_package'
-- require 'functions.toggle_hlsearch'
