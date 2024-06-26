-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<a-h>", "^", { desc = "Go to start of the line", remap = true })
map("n", "<a-l>", "$", { desc = "Go to end of the line", remap = true })

-- Bufferline
map("n", "<leader>bmn", "<cmd>BufferLineMoveNext<CR>", { desc = "Move BufferLine tab right", remap = true })
map("n", "<leader>bmp", "<cmd>BufferLineMovePrev<CR>", { desc = "Move BufferLine tab left", remap = true })

-- Terminal Emulator
map("t", "<esc><esc><esc>", "<cmd>close<cr>", { desc = "Hide Terminal" })
