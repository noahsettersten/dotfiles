vim.g.mapleader = " "

vim.opt.mouse = nil
vim.opt.number = true
vim.opt.signcolumn = "auto"
vim.opt.wrap = false
vim.opt.virtualedit = "all"
vim.opt.timeoutlen = 500
vim.opt.colorcolumn = "120"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

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


vim.cmd('set clipboard+=unnamedplus')

-- vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])

-- vim.opt.background = 'dark'
-- vim.cmd("iabbrev NOTE # NOTE: (%Y-%m-%d) Noah Settersten =>")
