-- https://github.com/rockerBOO/awesome-neovim
--
-- Configuration:
-- Requires Neovim v0.9+
-- Both relative and absolute line numbers with different
-- highlighting for odd and even relative numbers:
-- vim.opt.statuscolumn = [[
--   %#NonText#%{&nu?v:lnum:""}
--  %=%{&rnu&&(v:lnum%2)?"\ ".v:relnum:""}
--  %#LineNr#%{&rnu&&!(v:lnum%2)?"\ ".v:relnum:""}
-- ]]
--
-- vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])

-- Other colorschemes:
-- 'sainnhe/sonokai',
-- 'rebelot/kanagawa.nvim',
-- 'whatyouhide/vim-gotham',

-- Other plugins:
-- https://github.com/oysandvik94/curl.nvim#-features
--
-- {
--   'folke/ts-comments.nvim',
--   event = 'VeryLazy',
--   opts = {
--     lang = {
--       typescriptreact = {
--         '// %s', -- default commentstring when no treesitter node matches
--         '/* %s */',
--         call_expression = '// %s', -- specific commentstring for call_expression
--         jsx_attribute = '// %s',
--         jsx_element = '{/* %s */}',
--         jsx_fragment = '{/* %s */}',
--         spread_element = '// %s',
--         statement_block = '// %s',
--       },
--     },
--   },
-- },

-- { 'folke/twilight.nvim' },
-- /tris203/precognition.nvim
--
-- https://github.com/lewis6991/brodir.nvim
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-starter.md
-- https://github.com/prichrd/refgo.nvim

-- { 'TiagoMDG/react-comp-gen.nvim' },
-- { 'davidmh/mdx.nvim', config = true, dependencies = { 'nvim-treesitter/nvim-treesitter' } },
--
-- https://github.com/mawkler/refjump.nvim
-- https://github.com/miroshQa/rittli.nvim?tab=readme-ov-file
--
--
-- File explorers:
-- https://github.com/echasnovski/mini.files?tab=readme-ov-file
-- require('mini.files').setup()
-- { 'kevinhwang91/rnvimr' },
--! {'stevearc/oil.nvim'},
-- {'Xuyuanp/yanil'},
--! {'tamago324/lir.nvim'},
-- {'luukvbaal/nnn.nvim'},
--! {'SidOfc/carbon.nvim'},
-- {'dinhhuy258/sfm.nvim'},

-- https://github.com/meznaric/key-analyzer.nvim

return {}
