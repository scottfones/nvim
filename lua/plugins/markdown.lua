return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = { enabled = false },
        rumdl = { mason = false, filetypes = { "markdown", "markdown.mdx" } },
      },
    },
  },
  { "mfussenegger/nvim-lint", opts = { linters_by_ft = { markdown = {} } } },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { lsp_format = "prefer" },
        ["markdown.mdx"] = { lsp_format = "prefer" },
      },
    },
  },
}
