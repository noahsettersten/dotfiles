-- Structure inspired by patterns in Folke's dotfiles: https://github.com/folke/dot/tree/master/config/nvim
-- Initial setup https://www.reddit.com/r/neovim/comments/1039iti/minimal_config_with_lazy_treesitter_lspzero/
require 'config.bootstrap_lazy'
require 'config.10_options'
require('lazy').setup('plugins', {
  rocks = { enabled = false },
  install = { colorscheme = { 'habamax' } },
  performance = {
    -- reset_packpath = true,
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        'matchitparen',
        'netrwPlugin',
        'tarPlugin',
        'tohtml',
        'tutor',
      },
    },
  },
})

require 'config.20_mappings'
require 'config.30_autocmds'
require 'config.40_lsp'
-- require 'functions.go_to_package'
-- require 'functions.toggle_hlsearch'
