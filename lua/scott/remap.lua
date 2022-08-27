local nnoremap = require("scott.keymap").nnoremap

nnoremap("H", "^")
nnoremap("L", "$")
nnoremap("<leader>pv", "<cmd>Ex<cr>")

-- buffers
nnoremap("<leader>blc", "<cmd>BufferLinePickClose<cr>")
nnoremap("<leader>bls", "<cmd>BufferLinePick<cr>")
nnoremap("<leader>bmn", "<cmd>BufferLineMoveNext<cr>")
nnoremap("<leader>bmp", "<cmd>BufferLineMovePrev<cr>")
nnoremap("<leader>bn", "<cmd>BufferLineCycleNext<cr>")
nnoremap("<leader>bp", "<cmd>BufferLineCyclePrev<cr>")
nnoremap("<leader>ls", "<cmd>ls<cr>")

-- LSP
nnoremap("<leader>lf", "<cmd>lua vim.lsp.buf.formatting_sync(nil, 10000)<cr>") 

-- Tabs
nnoremap("<leader>nt", "<cmd>tabnew<cr>")

-- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

