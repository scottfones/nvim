return {
  { "neovim/nvim-lspconfig", opts = { servers = { marksman = { enabled = false }, rumdl = { mason = false } } } },
  { "mfussenegger/nvim-lint", opts = { linters_by_ft = { markdown = {} } } },
  { "stevearc/conform.nvim", opts = { formatters_by_ft = { markdown = { lsp_format = "prefer" } } } },
}
