-- Ideas: https://github.com/rockerBOO/awesome-neovim

return {
  -- Other colorschemes: 'sainnhe/sonokai', 'rebelot/kanagawa.nvim', 'whatyouhide/vim-gotham'
  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  { 'folke/which-key.nvim', lazy = true },
  { 'ethanholz/nvim-lastplace', opts = {} },
  --{ 'greggh/claude-code.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, cmd = 'ClaudeCode', opts = {} },
  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    config = true,
    keys = {
      { '<leader>a', nil, desc = 'AI/Claude Code' },
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer' },
      { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
      {
        '<leader>as',
        '<cmd>ClaudeCodeTreeAdd<cr>',
        desc = 'Add file',
        ft = { 'NvimTree', 'neo-tree', 'oil' },
      },
      -- Diff management
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    },
  },

  -- (Show available keybinds)
  -- :KeyAnalyzer <leader> or :KeyAnalyzer <C- or :KeyAnalyzer <M-
  { 'meznaric/key-analyzer.nvim', cmd = 'KeyAnalyzer', opts = {} },

  -- https://github.com/otavioschwanck/tmux-awesome-manager.nvim

  {
    'nvim-treesitter/nvim-treesitter',
    opts = { ensure_installed = { 'elixir', 'lua', 'ruby', 'rust', 'go', 'typescript', 'swift', 'objc' } },
  },
  'HiPhish/rainbow-delimiters.nvim',

  {
    'folke/trouble.nvim',
    keys = {
      { '<leader>td', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'View diagnostics' },
      { '<leader>tw', '<cmd>Trouble diagnostics toggle<cr>', desc = 'View workspace diagnostics' },
    },
    opts = { focus = true },
  },

  { 'nvim-tree/nvim-web-devicons', lazy = true },
  { 'nvim-lualine/lualine.nvim', opts = {} },

  -- {
  --   'miversen33/sunglasses.nvim',
  --   opts = {
  --     -- filter_percent = 0.1,
  --     -- filter_type = 'SHADE',
  --     filter_percent = 0.15,
  --     filter_type = 'NOSYNTAX',
  --     excluded_highlights = { 'LineNr' },
  --   },
  -- },

  {
    'akinsho/toggleterm.nvim',
    keys = { { ',<C-t>', '<CMD>ToggleTerm direction=float<CR>', mode = { 'n', 't' }, desc = 'Toggle terminal' } },
    opts = {},
  },

  -- (Dim exterior code via Treesitter)
  'https://github.com/folke/twilight.nvim',
}
