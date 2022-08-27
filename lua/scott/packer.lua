-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Color Themes
    use { 
        'luisiacc/gruvbox-baby', 
        branch = 'main',
    }

    -- Debugging
    use { 'nvim-lua/plenary.nvim' }
    use { 'mfussenegger/nvim-dap' } 

    -- Git
    use { 'airblade/vim-gitgutter' }

    -- Interface
    use {
        'akinsho/bufferline.nvim', 
        tag = "v2.*", 
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use { 'j-hui/fidget.nvim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use { 'RRethy/vim-illuminate' }

    -- LSP Config
    use { 
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'ray-x/lsp_signature.nvim',
        'jose-elias-alvarez/null-ls.nvim',
        'neovim/nvim-lspconfig',
        'rust-lang/rust.vim',
        'simrat39/rust-tools.nvim',
    }

    -- LSP Autocomplete
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
    use { 'hrsh7th/cmp-vsnip' }                            
    use { 'hrsh7th/cmp-path' }                          
    use { 'hrsh7th/cmp-buffer' }                           

    -- Packer
    use { 'wbthomason/packer.nvim' }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- TrPickeesitter
    use {
        'nvim-treesitter/nvim-treesitter', 
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use { 'nvim-treesitter/playground' }
    use { 'romgrk/nvim-treesitter-context' }

end)
