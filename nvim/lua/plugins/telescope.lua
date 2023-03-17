return {
    { 'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = 'nvim-lua/plenary.nvim',
        keys = {
            { "<C-f>",  "<cmd>Telescope find_files hidden=true noignore=true<cr>", mode = { "n" }, desc = "Search for file name" },
            { ",<C-f>", "<cmd>Telescope live_grep<cr>",                            mode = { "n" }, desc = "Search within files" },
            { ",<C-g>", "<cmd>Telescope git_status<cr>",                           mode = { "n" }, desc = "Search git modifications" },
            { ",<C-t>", "<cmd>Telescope tailiscope categories<cr>",                mode = { "n" }, desc = "Search Tailwind class names" },
        },
        config = function()
          require('telescope').setup {
              defaults = {
                  -- Inspired by Thomas's additions: https://github.com/tomxkay/astronvim_config/blob/main/plugins/telescope.lua
                  mappings = {
                      i = {
                          ["<c-l>"] = require("trouble.providers.telescope").smart_open_with_trouble,
                      },
                      n = {
                          -- ["t"] = require("telescope.actions").toggle_all,
                          -- ["p"] = require("telescope.actions").toggle_selection,
                          ["<c-l>"] = require("trouble.providers.telescope").smart_open_with_trouble,
                      },
                  }
              }
          }
        end
    },

    -- Telescope plugins
    { 'danielvolchek/tailiscope.nvim',
        config = function()
          require("telescope").load_extension("tailiscope")
        end
    },
}
