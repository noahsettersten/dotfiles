local M = {}

function M.key(key, command, opts)
  vim.keymap.set('n', key, '<cmd>lua ' .. command .. '<cr>', opts)
end

return M
