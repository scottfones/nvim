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

  -- gruvbox-material
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_bold = "1"
      vim.g.gruvbox_material_enable_italic = "1"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_transparent_background = "1"
      vim.g.gruvbox_material_ui_contrast = "high"
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

  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },

  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      transparent = true,
    },
  },

  -- github
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        },
      })
    end,
  },

  -- edge
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.edge_style = "aura"
      vim.g.edge_enable_italic = true
      vim.g.edge_enable_bold = true
      vim.g.edge_transparent_background = true
    end,
  },

  -- luna
  {
    "wtfox/luna.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      accent = 1.0, -- 0-1, blends syntax accents toward grey_light; 1 = full color
      plugins = {
        all = true, -- enable every plugin integration unconditionally
        auto = true, -- when plugins.all is false, auto-detect via lazy.nvim
      },
      -- on_colors = function(colors) end,
      -- on_highlights = function(highlights, colors) end,
    },
  },

  -- Set colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      -- colorscheme = "edge",
      -- colorscheme = "github_dark_dimmed",
      -- colorscheme = "gruvbox-baby",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "kanagawa-dragon",
      colorscheme = "kanagawa-wave",
      -- colorscheme = "luna",
      -- colorscheme = "tokyonight",
    },
  },
}
