vim.g.mapleader = ' '

vim.opt.mouse = ''
vim.opt.number = true
vim.opt.signcolumn = 'auto'
vim.opt.wrap = false
vim.opt.virtualedit = 'all'
vim.opt.timeoutlen = 500
vim.opt.colorcolumn = '120'

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.opt.undofile = true

-- This allows replacements to preview live as you type (e.g. %s/pattern/replace/g)
vim.opt.inccommand = 'nosplit'

-- Requires Neovim v0.9+
-- Both relative and absolute line numbers with different
-- highlighting for odd and even relative numbers:
-- vim.opt.statuscolumn = [[
--   %#NonText#%{&nu?v:lnum:""}
--  %=%{&rnu&&(v:lnum%2)?"\ ".v:relnum:""}
--  %#LineNr#%{&rnu&&!(v:lnum%2)?"\ ".v:relnum:""}
-- ]]

-- Configure LSP for Standard
-- https://github.com/testdouble/standard/wiki/IDE:-neovim

vim.cmd 'set clipboard+=unnamedplus'

-- vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])

-- vim.opt.background = 'dark'
-- vim.cmd("iabbrev NOTE # NOTE: (%Y-%m-%d) Noah Settersten =>")
--

-- Disabled unused language providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- TODO: Dashboard
--                                                _
--                                               .-.      / \        _
--                                   ^^         /   \    /^./\__   _/ \
--                                 _        .--'\/\_ \__/.      \ /    \  ^^  ___
--                                / \_    _/ ^      \/  __  :'   /\/\  /\  __/   \
--                               /    \  /    .'   _/  /  \   ^ /    \/  \/ .`'\_/\
--                              /\/\  /\/ :' __  ^/  ^/    `--./.'  ^  `-.\ _    _:\ _
--                             /    \/  \  _/  \-' __/.' ^ _   \_   .'\   _/ \ .  __/ \
--                           /\  .-   `. \/     \ / -.   _/ \ -. `_/   \ /    `._/  ^  \
--                          /  `-.__ ^   / .-'.--'    . /    `--./ .-'  `-.  `-. `.  -  `.
--                        @/        `.  / /      `-.   /  .-'   / .   .'   \    \  \  .-  \%
--                        @(88%@)@%% @)&@&(88&@.-_=_-=_-=_-=_-=_.8@% &@&&8(8%@%8)(8@%8 8%@)%
--                        @88:::&(&8&&8::JGS:&`.~-_~~-~~_~-~_~-~~=.'@(&%::::%@8&8)::&#@8::::
--                        `::::::8%@@%:::::@%&8:`.=~~-.~~-.~~=..~'8::::::::&@8:::::&8::::::'
--                         `::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::'
--
--
--                                  Find File                                     f
--
--                                  New File                                      n
--
--                                  Projects                                      p
--
--                                  Recent files                                  r
--
--                                  Find Text                                     t
--
--                                  Configuration                                 c
--
