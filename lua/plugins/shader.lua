-- Add shader support.
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "wgsl",
        "glsl",
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "wgsl-analyzer",
        "glsl_analyzer",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        wgsl_analyzer = {
          settings = {
            ["wgsl-analyzer"] = {
              inlayHints = {
                structLayoutHints = true,
                typeVerbosity = "full",
              },
            },
          },
        },
        glsl_analyzer = {},
      },
    },
  },
}
