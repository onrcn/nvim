local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    { 
        'rose-pine/neovim', 
        name = 'rose-pine', 
        lazy = false, 
        priority=1000,
        config = function()
            vim.cmd([[colorscheme rose-pine]])
        end,
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },

    {'nvim-treesitter/playground'},
    {'theprimeagen/harpoon'},
    {'tpope/vim-fugitive'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'mbbill/undotree'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    {
        'nvim-lualine/lualine.nvim', 
        dependencies = { "nvim-tree/nvim-web-devicons" }, 
        lazy = true
    },
    
})
