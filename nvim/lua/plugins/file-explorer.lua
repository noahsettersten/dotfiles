-- File browser:
return {
  --! { 'stevearc/oil.nvim' },
  --! { 'tamago324/lir.nvim' },
  --! { 'SidOfc/carbon.nvim' },
  -- { 'https://github.com/lewis6991/brodir.nvim' },
  -- { 'kevinhwang91/rnvimr' },
  -- { 'Xuyuanp/yanil' },
  -- { 'luukvbaal/nnn.nvim' },
  -- { 'dinhhuy258/sfm.nvim' },

  {
    'echasnovski/mini.nvim',
    version = false,
    keys = { { ',md', '<CMD>lua MiniFiles.open()<CR>', desc = 'Toggle file explorer' } },
    config = function()
      require('mini.comment').setup {
        mappings = {
          comment_line = '<leader>/',
        },
      }
      require('mini.files').setup()
    end,
  },

  -- File icons: ❇ ✿ ❀ ✠ ⊙ ⚪
  -- Folder icons: ⛋ , 🞕 /🞏
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      { ',d', '<CMD>NvimTreeToggle<CR>' },
      { ',D', '<CMD>NvimTreeFindFile<CR>' },
    },
    config = function()
      require('nvim-tree').setup {
        on_attach = function(bufnr)
          require('nvim-tree.api').config.mappings.default_on_attach(bufnr)

          -- Disable "open system" keymap that I use by mistake.
          vim.keymap.del('n', 's', { buffer = bufnr })
        end,
        renderer = {
          icons = {
            glyphs = {
              default = '🞄',
              folder = { default = '𜱩', open = '𜱪' },
            },
          },
        },
      }
    end,
  },
}
