vim.g.mapleader = ' '

vim.opt.mouse = ''
vim.opt.number = true
-- vim.opt.signcolumn = 'auto'
vim.opt.wrap = false
vim.opt.virtualedit = 'all'
vim.opt.timeoutlen = 500
vim.opt.colorcolumn = '120'

vim.opt.cursorline = true

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

vim.cmd 'set clipboard+=unnamedplus'

-- Disabled unused language providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
