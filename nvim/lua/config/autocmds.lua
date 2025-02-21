-- From https://github.com/Zeioth/mason-extra-cmds?tab=readme-ov-file#events
-- Update Mason and Treesitter when updating Lazy packages
vim.api.nvim_create_autocmd('User', {
  pattern = 'LazyInstall',
  callback = function()
    vim.cmd ':MasonUpdateAll'
    vim.cmd ':TSUpdateSync'
  end,
})

-- Automatically set foldmethod=syntax for .json (https://vi.stackexchange.com/a/10563)
-- vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--   pattern = '*.json',
--   callback = function()
--     vim.cmd ':set foldmethod=syntax'
--   end,
-- })
