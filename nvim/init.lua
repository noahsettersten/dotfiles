-- Imladris
--
-- ===============
--
-- A Elbereth Gilthoniel
--   silivren penna míriel
--   o menel aglar elenath!
-- Na-chaered palan-díriel
--   o galadhremmin ennorath,
--   Fanuilos, le linnathon
--   nef aear, sí nef aearon!
--
-- ===============
--
-- Guide:
-- https://github.com/nanotee/nvim-lua-guide
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
--
-- Begin from scratch with init.lua
-- dashboard-nvim
-- Tree: https://github.com/kyazdani42/nvim-tree.lua
-- FZF
-- Use builtin LSP
-- lazygit
--
-- Tooling:
-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/sbdchd/neoformat
-- https://github.com/hrsh7th/nvim-cmp/
-- https://github.com/folke/lsp-colors.nvim
-- https://lookatme.readthedocs.io/en/latest/
-- https://github.com/nvim-lua/lsp_extensions.nvim
-- https://github.com/RishabhRD/nvim-lsputils
-- https://deno.com/blog/v1.6#built-in-deno-language-server


-- Ideas:
-- https://github.com/tjdevries/config_manager/tree/master/xdg_config/nvim
-- https://www.lunarvim.org/02-after-install.html
-- https://github.com/samrath2007/kyoto.nvim/blob/main/init.lua
-- https://github.com/samrath2007/kyoto.nvim/blob/main/lua/options.lua

fallback = true
-- fallback = false

if (fallback)
then
  -- Former Vimscript configuration
  vim.cmd('source ~/.dotfiles/files/.vimrc')
else
  require('core')

  require('plugins.bootstrap')
  require('plugins.load')

  require('theme')

  require('config.file_management')
  require('config.searching')
  require('config.tmux')
  require('config.quickfix')
  require('config.clipboard')
  require('config.lsp')
  require('config.abbreviations')
  require('config.profiling')

  require('plugins.testing')
  require('plugins.git')
  require('plugins.airline')
  require('plugins.ledger')
  require('plugins.buffergator')
  require('plugins.nuake')
  require('plugins.misc')

  require('mappings')
end
