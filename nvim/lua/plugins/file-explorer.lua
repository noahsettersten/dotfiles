-- File browser
--
-- Other ideas:
--! { 'stevearc/oil.nvim' },
--! { 'tamago324/lir.nvim' },
--! { 'SidOfc/carbon.nvim' },
--
-- { 'https://github.com/lewis6991/brodir.nvim' },
-- { 'kevinhwang91/rnvimr' },
-- { 'Xuyuanp/yanil' },
-- { 'luukvbaal/nnn.nvim' },
-- { 'dinhhuy258/sfm.nvim' },

return {
  {
    'echasnovski/mini.nvim',
    version = false,
    keys = {
      { ',md', '<CMD>lua MiniFiles.open()<CR>', mode = { 'n' }, desc = 'Toggle file explorer' },
    },
    config = function()
      require('mini.comment').setup {
        mappings = {
          comment_line = '<leader>/',
        },
      }
      require('mini.files').setup()
    end,
  },

  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      { ',d', '<CMD>NvimTreeToggle<CR>' },
      { ',D', '<CMD>NvimTreeFindFile<CR>' },
    },
    opts = {
      renderer = {
        icons = {
          glyphs = {
            default = "❇",
            -- default = "✿",
            -- default = "❀",
            -- default = "✠",
            folder = {
              default = "🞕",
              open = "🞏",
              -- default = "⛋",
            },
          },
        },
      },
    },
  },
}
