vim.keymap.set('n', ';', ':', { desc = "Enter command prompt" })
vim.keymap.set('n', "SS", ":w<cr>", { desc = "Save file" })

-- lvim.keys.insert_mode["<C-j>"] = ""
-- lvim.keys.insert_mode["kj"] = false

-- Disable frustrating line movement when quickly pressing ESC+j/k
-- lvim.keys.insert_mode["<A-j>"] = false
-- lvim.keys.insert_mode["<A-k>"] = false
-- lvim.keys.normal_mode["<A-j>"] = false
-- lvim.keys.normal_mode["<A-k>"] = false
-- lvim.keys.visual_block_mode["<A-j>"] = false
-- lvim.keys.visual_block_mode["<A-k>"] = false


-- Inspired by Thomas's config
vim.keymap.set('n', '<left>', '<CMD>vertical resize +5<CR>')
vim.keymap.set('n', '<right>', '<CMD>vertical resize -5<CR>')
vim.keymap.set('n', '<down>', '<CMD>resize +5<CR>')
vim.keymap.set('n', '<up>', '<CMD>resize -5<CR>')


-- vim.cmd("abbrev NOTE # NOTE: (`strftime("%Y-%m-%d")`) `system("whoami | tr -d '\n'")` => ${1}")
-- vim.cmd("iabbrev <expr> NOTE # NOTE: (strftime('%Y-%m-%d')) Noah Settersten =>")

-- vim.keymap.set('n', '<Esc>', require('notify').dismiss, { noremap = true, desc = 'Dismiss notification' })


-- Mappings to navigate between marks in Nvim-tree
-- vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next,
-- { noremap = true, desc = 'Next marked file in nvim-tree' })
-- vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev,
-- { noremap = true, desc = 'Previous marked file in nvim-tree' })
-- vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select,
-- { noremap = true, desc = 'Select mark in nvim-tree' })


-- Open docs for package on given line
vim.keymap.set("n", "gx", require("functions.go_to_package").OpenPackageDocs, { desc = "Open package docs" })
-- vim.cmd("nnoremap gx :lua require('functions.go_to_package').OpenPackageDocs()<CR>")


-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
-- name = "+Trouble",
-- r = { "<cmd>Trouble lsp_references<cr>", "References" },
-- f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
-- d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
-- q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
-- l = { "<cmd>Trouble loclist<cr>", "LocationList" },
-- w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

vim.cmd("iabbrev NOTE # NOTE: (%Y-%m-%d) Noah Settersten =>")
