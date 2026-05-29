-- Set universal clippy settings. Override with project .vscode/settings.json
return {
  "mrcjkb/rustaceanvim",
  ft = "rust",
  dependencies = { "mrjones2014/codesettings.nvim" },
  opts = {
    dap = {
      autoload_configurations = false,
    },
    server = {
      load_vscode_settings = false,
      ---@param default_settings table
      settings = function(_, default_settings)
        return require("codesettings").with_local_settings("rust-analyzer", default_settings)
      end,
      default_settings = {
        ["rust-analyzer"] = {
          check = {
            command = "clippy",
            extraArgs = { "--all", "--", "-W", "clippy::pedantic", "-W", "clippy::nursery" },
          },
        },
      },
    },
  },
}
