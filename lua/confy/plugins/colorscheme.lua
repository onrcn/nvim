return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority=1000,
        config = function()
            -- vim.cmd([[colorscheme rose-pine-moon]])
        end,
    },
    {
        'Mofiqul/dracula.nvim',
        lazy = false,
        priority=1000,
        config = function()
            vim.cmd([[colorscheme dracula]])
        end,

    }
}
