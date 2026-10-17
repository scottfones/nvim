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
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = { rumdl = { stream = "stdout" } },
      linters_by_ft = { markdown = {}, rust = { "rumdl" } },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { lsp_format = "prefer" },
        ["markdown.mdx"] = { lsp_format = "prefer" },
        rust = { "rumdl", lsp_format = "first" },
      },
    },
  },
}
