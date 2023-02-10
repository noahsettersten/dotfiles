-- Additional Plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.plugins = {
  { "nvim-lua/plenary.nvim" },

  -- Colorschemes
  { "sainnhe/sonokai" },
  { "rebelot/kanagawa.nvim" },
  { "savq/melange" },
  { "catppuccin/nvim" },
  -- { "kyazdani42/blue-moon" },
  -- { "frenzyexists/aquarium-vim" },
  -- { "EdenEast/nightfox.nvim" },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
  {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup {
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = { "gitcommit", "gitrebase" }
      }
    end
  },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require("toggleterm").setup {
        open_mapping = [[<c-t>]]
      }
    end
  },
  { 'nathanaelkane/vim-indent-guides' },
  { 'godlygeek/tabular' },
  { 'plasticboy/vim-markdown' },
  { 'christoomey/vim-tmux-navigator' },
  { 'edkolev/tmuxline.vim',
    config = function()
      -- vim.cmd(':Tmuxline vim_statusline_1')
    end
  },
  { 'benmills/vimux' },
  { 'danielvolchek/tailiscope.nvim' },
  { 'ledger/vim-ledger' },
  { 'cbochs/grapple.nvim' },
  { 'phaazon/hop.nvim',
    branch = 'v2',
    as = "hop",
    -- keys = { "s", "S" },
    keys = { "s" },
    config = function()
      -- see :h hop-config
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      vim.api.nvim_set_keymap("n", "s", ":HopWord<cr>", {})
      -- vim.api.nvim_set_keymap("n", "S", ":HopPattern<cr>", {})
    end,
  },
  -- { "folke/neodev.nvim" },
  { 'nvim-zh/colorful-winsep.nvim' },

  -- { "nvim-treesitter/playground" },
  -- { 'almo7aya/openingh.nvim' },
}
