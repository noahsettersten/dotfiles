--[[
lvim is the global options object

Linters should be filled in as strings with either a global executable or a path to an executable
]]

-- General
lvim.log.level = "warn"
lvim.format_on_save = true
-- let vim.g.sonokai_style = 'maia'
-- lvim.colorscheme = "tomorrow-night"
lvim.colorscheme = "sonokai"
-- lvim.colorscheme = "everforest"
-- andromeda, shusia, maia

-- https://www.lunarvim.org/configuration/01-settings.html#example-options

vim.opt.virtualedit="all"
vim.cmd("set nowrap")
-- vim.opt.nowrap=true
vim.opt.mouse=""
vim.opt.colorcolumn="120"

-- TODO:
-- :iab note # NOTE: (YYYY-mm-dd) Noah Settersten =>

-- vim.cmd("set virtualedit=all")
-- vim.o.indexed_search_dont_move=1
vim.cmd("let g:indexed_search_dont_move=1")
-- vim.cmd("set mouse=")
-- vim.cmd("set colorcolumn=80")

vim.cmd("let g:do_filetype_lua = 1")
vim.cmd("let g:did_load_filetypes = 0")

vim.g.tmuxline_preset = {
      a    = '#S',
      b    = '#(~/.dotfiles/scripts/unread_gmail.sh) Unread',
      c    = '#W',
      win  = {'#I', '#W'},
      cwin = {'#I', '#W'},
      x    = {'#(~/.dotfiles/scripts/spotify_current_track.sh)', '%a'},
      y    = {'%b %d', '%R'},
      z    = '#h'
}

vim.g.VimuxOrientation = "h"
vim.g.VimuxHeight = "40"

lvim.builtin.autopairs.active = false

lvim.builtin.nvimtree.setup.open_on_setup = true
lvim.builtin.nvimtree.setup.open_on_tab = true
lvim.builtin.nvimtree.setup.update_focused_file = {
  enable = false
}

-- Helpful Telescope commands
-- :Telescope commands, vim_options, autocommands, keymaps, highlights

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- lvim.leader = ","

-- add your own keymapping
lvim.keys.normal_mode[";"] = ":"
lvim.keys.normal_mode["SS"] = ":w<cr>"
lvim.keys.normal_mode["<C-f>"] = "<cmd>Telescope find_files<cr>"
lvim.keys.normal_mode[",<C-f>"] = "<cmd>Telescope live_grep<cr>"
lvim.keys.normal_mode[",<C-g>"] = "<cmd>Telescope git_status<cr>"
lvim.keys.normal_mode[",d"] = "<cmd>NvimTreeToggle<cr>"
lvim.keys.normal_mode[",D"] = "<cmd>NvimTreeFindFile<cr>"

lvim.keys.normal_mode[",gd"] = ":Gdiff<cr>"
lvim.keys.normal_mode[",gst"] = ":Git<cr>"
lvim.keys.normal_mode[",gb"] = ":Git blame -w -M<cr>"

-- lvim.keys.normal_mode[",t"] = "<Plug>SendTestToTmux"
-- lvim.keys.normal_mode[",T"] = "<Plug>SendFocusedTestToTmux"

-- lvim.keys.normal_mode[",t"] = ":VimuxRunCommand('clear; mix test ' . bufname('%'))<CR>"
-- lvim.keys.normal_mode[",T"] = ":VimuxRunCommand('clear; mix test ' . bufname('%') . ':' . line('.'))<CR>"
lvim.keys.normal_mode[",t"] = ":VimuxRunCommand('mix test ' . bufname('%'))<CR>"
lvim.keys.normal_mode[",T"] = ":VimuxRunCommand('mix test ' . bufname('%') . ':' . line('.'))<CR>"

lvim.keys.insert_mode["<C-j>"] = ""

-- Disable frustrating line movement when quickly pressing ESC+j/k
lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false

-- set diffopt+=vertical

-- TODO: Ledger setup
-- au BufNewFile,BufRead *.ldg,*.ledger,*.journal setf ledger | comp ledger

-- function! LedgerHistory()
--   let commandGrid = '~/Dropbox/other/ledger/ledgerbil/main.py grid -m -p "last 2 months" -A Expenses'
--   call VimuxRunCommand(commandGrid)
-- endfunction

-- function! LedgerBudget()
--   let command = 'ledger budget -p this --effective'
--   call VimuxRunCommand(command)
-- endfunction

-- function! LedgerBudgetExport()
--   let command = '~/Dropbox/other/ledger/export_budget.sh'
--   call VimuxRunCommand(command)
-- endfunction

-- function! LedgerMonthlyReview()
--   let command = 'ledger balance -p "this month" --sort "-amount"'
--   call VimuxRunCommand(command)
-- endfunction

-- function! LedgerBalance()
--   let command = 'ledger balance Assets'
--   call VimuxRunCommand(command)
-- endfunction

-- function! LedgerRegister()
--   let command = 'ledger register -d "d>[last month]" -R Expenses'
--   call VimuxRunCommand(command)
-- endfunction

-- " Mnemonics: hh History, hb Budgets, ha Accounts, he Entries, hm Monthly budget
-- " p, r, u, s
-- " nmap <leader>hh :call LedgerHistory()<CR>
-- nmap <leader>hb :call LedgerBudget()<CR>
-- " nmap <leader>hm :call LedgerBudgetExport()<CR>
-- nmap <leader>ha :call LedgerBalance()<CR>
-- nmap <leader>he :call LedgerRegister()<CR>

-- nmap <leader>hm :call LedgerMonthlyReview()<CR>
-- nmap <leader>le :call ledger#entry()<CR>




-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""

-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
    -- ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }
lvim.builtin.telescope.defaults.preview = {
  treesitter = false,
}

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}
-- lvim.builtin.which_key.mappings.T.h = { "<cmd>TSHighlightCapturesUnderCursor<cr>", "Highlight Captures" }
-- lvim.builtin.which_key.mappings.T.p = { "<cmd>TSPlaygroundToggle<cr>", "Playground" }
-- lvim.builtin.treesitter.playground.enable = true

-- User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.lualine.sections.lualine_y = { "location" }

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "typescript",
  "ruby",
  "elixir",
  "css",
  "yaml"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--   }
-- }
-- Set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }


local nvim_lsp = require("lspconfig")
nvim_lsp.solargraph.setup {
    filetypes = {"ruby", "rakefile"},
    root_dir = nvim_lsp.util.root_pattern("Gemfile", ".git", "."),
    settings = {
        solargraph = {
            autoformat = false,
            completion = true,
            diagnostic = true,
            folding = false,
            references = true,
            rename = false,
            symbols = true
        }
    }
}

-- And this is the example setup for nvim-lspconfig

-- require'lspconfig'.solargraph.setup{
-- cmd = { "solargraph", "stdio" }
--     filetypes = { "ruby" }
--     root_dir = root_pattern("Gemfile", ".git")
--     settings = {
--       solargraph = {
--         diagnostics = true
--       }
--     }
-- }

vim.list_extend(lvim.lsp.override, { "efm" })
require("lvim.lsp.manager").setup("efm", {
  filetypes = {"elixir", "ruby", "eruby", "html", "css"}
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetype = { "typescript", "typescriptreact", "javascript", "javascriptreact", "eruby", "html", "css", "scss" },
  },
}

-- Additional Plugins
lvim.plugins = {
  {"nvim-treesitter/playground"},
  {"sainnhe/sonokai"},
  -- {'chriskempson/tomorrow-theme', rtp = 'vim'},
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {"tpope/vim-fugitive",
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
    ft={"fugitive"}
  },
  {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup {
        lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
        lastplace_ignore_filetype = {"gitcommit", "gitrebase"}
      }
    end
  },
  { 'nathanaelkane/vim-indent-guides' },
  { 'godlygeek/tabular' },
  { 'plasticboy/vim-markdown' },
  { 'christoomey/vim-tmux-navigator' },
  { 'edkolev/tmuxline.vim',
    config = function()
      vim.cmd(':Tmuxline vim_statusline_1')
    end
  },
  { 'benmills/vimux' }
  -- { 'jgdavey/vim-turbux' }, --, { 'branch': 'main' }
  -- { 'spiegela/vimix' }

  -- {
  --   "folke/todo-comments.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("todo-comments").setup()
  --   end,
  -- },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  -- }
}

-- vim.cmd('set rtp+=~/.local/share/lunarvim/site/pack/packer/start/tomorrow-theme/vim')

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
