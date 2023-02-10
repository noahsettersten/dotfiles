-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.normal_mode[";"] = ":"
lvim.keys.normal_mode["SS"] = ":w<cr>"
lvim.keys.normal_mode["<C-f>"] = "<cmd>Telescope find_files<cr>"
lvim.keys.normal_mode[",<C-f>"] = "<cmd>Telescope live_grep<cr>"
lvim.keys.normal_mode[",<C-g>"] = "<cmd>Telescope git_status<cr>"
lvim.keys.normal_mode[",<C-t>"] = "<cmd>Telescope tailiscope categories<cr>"
lvim.keys.normal_mode[",d"] = "<cmd>NvimTreeToggle<cr>"
lvim.keys.normal_mode[",D"] = "<cmd>NvimTreeFindFile<cr>"

lvim.keys.normal_mode[",gd"] = ":Gdiff<cr>"
lvim.keys.normal_mode[",gst"] = ":Git<cr>"
lvim.keys.normal_mode[",gb"] = ":Git blame -w -M<cr>"

-- lvim.keys.normal_mode["<C-t>"] = ":toggleterm"

-- lvim.keys.normal_mode[",t"] = "<Plug>SendTestToTmux"
-- lvim.keys.normal_mode[",T"] = "<Plug>SendFocusedTestToTmux"

-- lvim.keys.normal_mode[",t"] = ":VimuxRunCommand('clear; mix test ' . bufname('%'))<CR>"
-- lvim.keys.normal_mode[",T"] = ":VimuxRunCommand('clear; mix test ' . bufname('%') . ':' . line('.'))<CR>"
lvim.keys.normal_mode[",t"] = ":VimuxRunCommand('mix test ' . bufname('%'))<CR>"
lvim.keys.normal_mode[",T"] = ":VimuxRunCommand('mix test ' . bufname('%') . ':' . line('.'))<CR>"

lvim.keys.insert_mode["<C-j>"] = ""
lvim.keys.insert_mode["kj"] = false

-- Disable frustrating line movement when quickly pressing ESC+j/k
lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false

lvim.keys.normal_mode["<leader>mt"] = ":GrappleTag<CR>"
lvim.keys.normal_mode["<leader>mu"] = ":GrappleUntag<CR>"
lvim.keys.normal_mode["<leader>ml"] = ":GrapplePopup tags<CR>"


-- vim.cmd("abbrev NOTE # NOTE: (`strftime("%Y-%m-%d")`) `system("whoami | tr -d '\n'")` => ${1}")
-- vim.cmd("iabbrev <expr> NOTE # NOTE: (strftime('%Y-%m-%d')) Noah Settersten =>")
vim.cmd("iabbrev NOTE # NOTE: (%Y-%m-%d) Noah Settersten =>")

-- vim.keymap.set('n', '<Esc>', require('notify').dismiss, { noremap = true, desc = 'Dismiss notification' })


-- Mappings to navigate between marks in Nvim-tree
vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next,
  { noremap = true, desc = 'Next marked file in nvim-tree' })
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev,
  { noremap = true, desc = 'Previous marked file in nvim-tree' })
vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select,
  { noremap = true, desc = 'Select mark in nvim-tree' })


-- Open docs for package on given line
vim.keymap.set("n", "gx", require("functions.go_to_package").OpenPackageDocs, { desc = "Open package docs" })
-- vim.cmd("nnoremap gx :lua require('functions.go_to_package').OpenPackageDocs()<CR>")


-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}
