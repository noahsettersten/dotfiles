-- File browser
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

      require('mini.icons').setup {
        style = 'ascii',
      }
      require('mini.icons').mock_nvim_web_devicons()

      require('mini.files').setup()

      -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-starter.md
      -- require('mini.clue').setup()
    end,
  },

  {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
      {
        's1n7ax/nvim-window-picker',
        tag = 'v1.5',
        config = function()
          require('window-picker').setup {
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              bo = {
                filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
                buftype = { 'terminal', 'quickfix' },
              },
            },
            other_win_hl_color = '#e35e4f',
          }
        end,
      },
    },
    keys = {
      { ',d', '<CMD>Neotree toggle<CR>', mode = { 'n' }, desc = 'Toggle file explorer' },
      { ',D', '<CMD>Neotree filesystem reveal<CR>', mode = { 'n' }, desc = 'Show current file in file explorer' },
    },
    opts = {
      sources = {
        'filesystem',
        -- 'git_status',
      },
      window = {
        mappings = {
          ['S'] = 'split_with_window_picker',
          ['s'] = 'vsplit_with_window_picker',
        },
      },
      filesystem = {
        filtered_items = { hide_dotfiles = false, hide_gitignored = false },
        follow_current_file = { enabled = false },
      },
      buffers = {
        follow_current_file = { enabled = false },
      },

      default_component_configs = {
        icon = {
          provider = function(icon, node) -- setup a custom icon provider
            local text, hl
            local mini_icons = require 'mini.icons'
            if node.type == 'file' then -- if it's a file, set the text/hl
              text, hl = mini_icons.get('file', node.name)
            elseif node.type == 'directory' then -- get directory icons
              text, hl = mini_icons.get('directory', node.name)
              -- only set the icon text if it is not expanded
              if node:is_expanded() then
                text = nil
              end
            end

            -- set the icon text/highlight only if it exists
            if text then
              icon.text = text
            end
            if hl then
              icon.highlight = hl
            end
          end,
        },
        kind_icon = {
          provider = function(icon, node)
            local mini_icons = require 'mini.icons'
            icon.text, icon.highlight = mini_icons.get('lsp', node.extra.kind.name)
          end,
        },
      },
    },
  },
}
