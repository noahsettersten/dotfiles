return {
  -- File icons: ❇ ✿ ❀ ✠ ⊙ ⚪
  -- Folder icons: ⛋ , 🞕 /🞏
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      { ',d', '<CMD>NvimTreeToggle<CR>' },
      { ',D', '<CMD>NvimTreeFindFile<CR>' },
    },
    opts = {
      on_attach = function(bufnr)
        require('nvim-tree.api').config.mappings.default_on_attach(bufnr)

        -- Disable "open system" keymap that I use by mistake.
        vim.keymap.del('n', 's', { buffer = bufnr })
      end,
      -- renderer = { icons = { glyphs = {
      --   default = '🞄',
      --   folder = { default = '𜱩', open = '𜱪' },
      -- }, }, },
    },
  },

  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<C-f>', '<cmd>FzfLua files<cr>', desc = 'Search for file name' },
      { ',<C-f>', '<cmd>FzfLua live_grep<cr>', desc = 'Search within files' },
      { ',<C-g>', '<cmd>FzfLua git_status<cr>', desc = 'Search git modifications' },

      { ',<C-h>', '<cmd>FzfLua git_commits<cr>', desc = 'View git history for file' },
      { ',<C-l>', '<cmd>FzfLua lsp_document_symbols<cr>', desc = 'Search LSP symbols' },

      -- TODO: Can we search a list of Tailwind class names? 'danielvolchek/tailiscope.nvim',
      -- { ',<C-t>', '<cmd>Telescope tailiscope categories<cr>', desc = 'Search Tailwind class names' },
    },
    config = function()
      local actions = require('fzf-lua').actions
      require('fzf-lua').setup {
        actions = {
          files = {
            true,
            ['ctrl-x'] = actions.file_split,
            -- ['ctrl-t'] = open in tab
          },
        },
      }
    end,
  },
}
