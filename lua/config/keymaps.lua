-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keymap helper
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

-- Line navigation
map("n", "<a-h>", "^", { desc = "Go to start of the line", remap = true })
map("n", "<a-l>", "$", { desc = "Go to end of the line", remap = true })

-- Bufferline
map("n", "<leader>bmn", "<cmd>BufferLineMoveNext<CR>", { desc = "Move BufferLine tab right", remap = true })
map("n", "<leader>bmp", "<cmd>BufferLineMovePrev<CR>", { desc = "Move BufferLine tab left", remap = true })

-- Spelling
map("n", "z?", function()
  local view = vim.fn.winsaveview()
  local word, kind = unpack(vim.fn.spellbadword())
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.fn.winrestview(view)
  -- spellbadword() moves the cursor to the next bad word; only report the word under the cursor
  if word == "" or row ~= view.lnum or col > view.col or col + #word <= view.col then
    vim.notify("No spelling issue under cursor")
  else
    vim.notify(("%s: %s"):format(word, kind))
  end
end, { desc = "Spell issue under cursor" })
