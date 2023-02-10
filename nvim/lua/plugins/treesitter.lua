return {
  { 'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'elixir', 'lua', 'ruby', 'rust', 'go' },
        highlight = { enable = true }
      }
    end
  }
}
