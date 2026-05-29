-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.shell = "/usr/bin/fish"

-- BIOME / PRETTIER
vim.g.lazyvim_prettier_needs_config = true

-- CLIPBOARD
vim.opt.clipboard = "unnamedplus"
-- ssh clipboard config
if vim.env.SSH_TTY ~= nil then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
end

-- CURSOR
vim.o.guicursor = "n-v-c-sm-ve:block,r-cr-o-i-ci:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

-- PYTHON
-- python virtual environment (pynvim)
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/venv/bin/python")
vim.g.lazyvim_python_lsp = "ty"
vim.g.lazyvim_python_ruff = "ruff"

-- SPELL
vim.opt.spelloptions = "camel"
