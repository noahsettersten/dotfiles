-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "sonokai"
-- lvim.colorscheme = "melange"
-- lvim.colorscheme = "kanagawa"

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false
--
vim.cmd("set timeoutlen=500")

vim.opt.virtualedit = "all"
vim.cmd("set nowrap")
vim.opt.mouse = ""
vim.opt.colorcolumn = "120"
vim.cmd("let g:indexed_search_dont_move=1")

vim.g.tmuxline_preset = {
  a    = '#S',
  b    = '#(~/.dotfiles/scripts/unread_gmail.sh) Unread',
  c    = '#W',
  win  = { '#I', '#W' },
  cwin = { '#I', '#W' },
  x    = { '#(~/.dotfiles/scripts/spotify_current_track.sh)', '%a' },
  y    = { '%b %d', '%R' },
  z    = '#h'
}

-- Register Crystal filetype
vim.cmd("au BufRead,BufNewFile *.cr set filetype=crystal")

vim.g.VimuxOrientation = "h"
vim.g.VimuxHeight = "40"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.autopairs.active = false

lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.open_on_setup = true
lvim.builtin.nvimtree.setup.open_on_tab = true
lvim.builtin.nvimtree.setup.update_cwd = true
-- lvim.builtin.nvimtree.setup.update_focused_file.enable = false
-- lvim.builtin.nvimtree.setup.update_focused_file.update_cwd = false
lvim.builtin.nvimtree.setup.update_focused_file = { enable = false, update_cwd = true }
lvim.builtin.project.active = false
-- lvim.builtin.nvimtree.setup.update_focused_file.enable = nil
-- lvim.builtin.nvimtree.setup.update_focused_file.update_cwd = nil


lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header.val = {
  [[                         _                                         ]],
  [[                        .-.      / \        _                      ]],
  [[            ^^         /   \    /^./\__   _/ \                     ]],
  [[          _        .--'\/\_ \__/.      \ /    \  ^^  ___           ]],
  [[         / \_    _/ ^      \/  __  :'   /\/\  /\  __/   \          ]],
  [[        /    \  /    .'   _/  /  \   ^ /    \/  \/ .`'\_/\         ]],
  [[       /\/\  /\/ :' __  ^/  ^/    `--./.'  ^  `-.\ _    _:\ _      ]],
  [[      /    \/  \  _/  \-' __/.' ^ _   \_   .'\   _/ \ .  __/ \     ]],
  [[    /\  .-   `. \/     \ / -.   _/ \ -. `_/   \ /    `._/  ^  \    ]],
  [[   /  `-.__ ^   / .-'.--'    . /    `--./ .-'  `-.  `-. `.  -  `.  ]],
  [[ @/        `.  / /      `-.   /  .-'   / .   .'   \    \  \  .-  \%]],
  [[ @(88%@)@%% @)&@&(88&@.-_=_-=_-=_-=_-=_.8@% &@&&8(8%@%8)(8@%8 8%@)%]],
  [[ @88:::&(&8&&8::JGS:&`.~-_~~-~~_~-~_~-~~=.'@(&%::::%@8&8)::&#@8::::]],
  [[ `::::::8%@@%:::::@%&8:`.=~~-.~~-.~~=..~'8::::::::&@8:::::&8::::::']],
  [[  `::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::' ]],
}

-- Disable notifications as desired
-- lvim.builtin.notify.active = true

-- lvim.builtin.terminal.active = true
-- lvim.builtin.terminal.direction = "float"
lvim.builtin.terminal.open_mapping = [[<c-t>]]

lvim.builtin.lualine.sections.lualine_y = { "location" }

lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
lvim.builtin.telescope.defaults.preview = {
  treesitter = false,
}
lvim.builtin.telescope.pickers = {}
-- lvim.builtin.telescope.pickers.find_files.previewer = nil
