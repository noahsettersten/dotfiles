-- From https://github.com/Zeioth/mason-extra-cmds?tab=readme-ov-file#events
-- Update Treesitter when updating Lazy packages
vim.api.nvim_create_autocmd('User', {
  pattern = 'LazyInstall',
  callback = function()
    vim.cmd ':TSUpdateSync'
  end,
})
