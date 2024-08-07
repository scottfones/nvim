return {
  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },

  -- gruvbox-baby
  {
    "luisiacc/gruvbox-baby",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_baby_background_color = "dark"
      vim.g.gruvbox_baby_telescope_theme = 1
      vim.g.gruvbox_baby_transparent_mode = 1
    end,
  },

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      styles = {
        sidebars = "transparent",
      },
      transparent = true,
    },
  },

  -- catpuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-baby",
      colorscheme = "catppuccin-mocha",
    },
  },
}
