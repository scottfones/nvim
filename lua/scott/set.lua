-- Check https://github.com/nanotee/nvim-lua-guide
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 10 
vim.opt.signcolumn = "yes"

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.cmd "set noshowmode"

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=300})
augroup END
]]
