-- Add uv and ty support
return {
  {
    "benomahony/uv.nvim",
    ft = { "python" },
    dependencies = {
      "folke/snacks.nvim",
    },
    opts = {
      picker_integration = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ty = {
          cmd = function(dispatchers, config)
            local root = config.root_dir or vim.fn.getcwd()
            local local_ty = root .. "/.venv/bin/ty"
            local cmd = vim.uv.fs_stat(local_ty) and { local_ty, "server" } or { "ty", "server" }
            return vim.lsp.rpc.start(cmd, dispatchers)
          end,
        },
      },
    },
  },
}
