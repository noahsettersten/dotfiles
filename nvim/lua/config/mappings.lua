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

-- vim.cmd 'iabbrev API // TODO(API): Implement when endpoint is available.'
