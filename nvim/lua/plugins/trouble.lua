-- Diagnostics
return {
  { 'folke/trouble.nvim', cmd = "TroubleToggle",
    keys = {
      { " tr", "<cmd>Trouble lsp_references<cr>", mode = { "n" }, desc = "View LSP references" },
      { " tf", "<cmd>Trouble lsp_definitions<cr>", mode = { "n" }, desc = "View LSP definitions" },
      { " td", "<cmd>Trouble document_diagnostics<cr>", mode = { "n" }, desc = "View diagnostics" },
      { " tq", "<cmd>Trouble quickfix<cr>", mode = { "n" }, desc = "View quickfix" },
      { " tl", "<cmd>Trouble loclist<cr>", mode = { "n" }, desc = "View loclist" },
      { " tw", "<cmd>Trouble workspace_diagnostics<cr>", mode = { "n" }, desc = "View workspace diagnostics" }
    }
  }
}
