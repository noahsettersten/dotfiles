return {
  { 'ethanholz/nvim-lastplace',
    config = function()
      require('nvim-lastplace').setup {
        lastplace_ignore_buftype = { 'quickfix', 'nofile', 'help' },
        lastplace_ignore_filetype = { 'gitcommit', 'gitrebase' }
      }
    end
  },

  -- {
  -- "rmagatti/auto-session",
  -- keys = {
  -- { "<C-s>", "<cmd>Telescope session-lens search_session<cr>", mode = { "n" }, desc = "Search for auto sessions" }
  -- },
  -- config = function()
  -- require("auto-session").setup {
  -- auto_session_suppress_dirs = { "~/", "~/Documents", "~/Downloads", "~/Dropbox", "~/Library" }
  -- auto_session_allowed_dirs = { "~/development/*" },
  -- bypass_session_save_file_types = { "neo-tree" },
  -- pre_save_cmds = {
  -- close_neo_tree = function()
  -- require 'neo-tree.sources.manager'.close_all()
  -- end
  -- },
  -- post_restore_cmds = {
  --   open_neo_tree = function()
  --     require 'neo-tree.sources.manager'.show('filesystem')
  --   end
  -- }
  -- }
  -- end
  -- },
  --

  -- { "rmagatti/session-lens", config = true },

  -- { 'tpope/vim-obsession' },
}
