-- Language-specific plugins
return {
  -- (Manage curl requests) { 'oysandvik94/curl.nvim' },

  -- Typescript
  -- {
  --   'barrett-ruth/import-cost.nvim',
  --   build = 'sh install.sh yarn',
  --   config = true,
  -- },

  -- Golang
  {
    'fatih/vim-go',
    config = function()
      vim.g.go_def_mapping_enabled = 0
    end,
  },

  -- { 'elixir-tools/elixir-tools.nvim' },

  -- Xcode / iOS / Objective-C / Swift
  {
    'wojciech-kulik/xcodebuild.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'MunifTanjim/nui.nvim' },
    keys = {
      { '<leader>xl', '<cmd>XcodebuildToggleLogs<cr>', desc = 'Toggle Xcodebuild Logs' },
      { '<leader>xb', '<cmd>XcodebuildBuild<cr>', desc = 'Build Project' },
      { '<leader>xr', '<cmd>XcodebuildBuildRun<cr>', desc = 'Build & Run Project' },
      { '<leader>xt', '<cmd>XcodebuildTest<cr>', desc = 'Run Tests' },
      { '<leader>xT', '<cmd>XcodebuildTestClass<cr>', desc = 'Run This Test Class' },
      { '<leader>xs', '<cmd>XcodebuildPicker<cr>', desc = 'Show All Xcodebuild Actions' },
      { '<leader>xd', '<cmd>XcodebuildSelectDevice<cr>', desc = 'Select Device' },
      { '<leader>xp', '<cmd>XcodebuildSelectTestPlan<cr>', desc = 'Select Test Plan' },
      { '<leader>xc', '<cmd>XcodebuildToggleCodeCoverage<cr>', desc = 'Toggle Code Coverage' },
      { '<leader>xC', '<cmd>XcodebuildShowCodeCoverageReport<cr>', desc = 'Show Code Coverage Report' },
      { '<leader>xq', '<cmd>Telescope quickfix<cr>', desc = 'Show QuickFix List' },
    },
    opts = { code_coverage = { enabled = true } },
  },
}
