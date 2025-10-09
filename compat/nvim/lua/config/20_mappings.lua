vim.keymap.set('n', ';', ':', { desc = 'Enter command prompt' })
-- vim.keymap.set('n', "SS", ":w<cr>", { desc = "Save file" })

-- Inspired by Thomas's config
vim.keymap.set('n', '<left>', '<CMD>vertical resize +5<CR>')
vim.keymap.set('n', '<right>', '<CMD>vertical resize -5<CR>')
vim.keymap.set('n', '<down>', '<CMD>resize +5<CR>')
vim.keymap.set('n', '<up>', '<CMD>resize -5<CR>')

-- Open docs for package on given line
-- vim.keymap.set('n', 'gx', require('functions.go_to_package').OpenPackageDocs, { desc = 'Open package docs' })

vim.cmd 'iabbrev NOTE # NOTE: (%Y-%m-%d) Noah Settersten =>'

local wk = require 'which-key'
wk.add {
  { '<leader>g', group = 'LSP' },
  { '<leader>t', group = 'Diagnostics with Trouble' },
  { '<leader>s', group = 'Internet Search' },
  { ',g', group = 'Git' },
}

-- vim.keymap.set('n', '<Ctrl>h', '<CTRL-W_<Left>>')
-- vim.keymap.set('n', '<up>', '<CMD>resize -5<CR>')
-- vim.keymap.set('n', '<up>', '<CMD>resize -5<CR>')
-- vim.keymap.set('n', '<up>', '<CMD>resize -5<CR>')

-- Automatically set foldmethod=syntax for .json (https://vi.stackexchange.com/a/10563)
vim.keymap.set('n', '<leader>fs', '<CMD>set foldmethod=syntax<CR>')
