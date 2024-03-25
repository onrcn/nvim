return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority=1000,
        config = function()
            -- vim.cmd([[colorscheme rose-pine-dawn]])
        end,
    },
    {
        'Mofiqul/dracula.nvim',
        lazy = false,
        priority=1000,
        config = function()
            -- vim.cmd([[colorscheme dracula]])
        end,
    },
    {
        'NTBBloodbath/doom-one.nvim',
        lazy = false,
        priority=1000,
        config = function()
            -- Add color to cursor
            vim.g.doom_one_cursor_coloring = true
            -- Set :terminal colors
            vim.g.doom_one_terminal_colors = true
            -- Enable italic comments
            vim.g.doom_one_italic_comments = true
            -- Enable TS support
            vim.g.doom_one_enable_treesitter = true
            -- Color whole diagnostic text or only underline
            vim.g.doom_one_diagnostics_text_color = true
            -- Enable transparent background
            vim.g.doom_one_transparent_background = false

            -- Pumblend transparency
            vim.g.doom_one_pumblend_enable = false
            vim.g.doom_one_pumblend_transparency = 20

            -- Plugins integration
            vim.g.doom_one_plugin_neorg = true
            vim.g.doom_one_plugin_barbar = false
            vim.g.doom_one_plugin_telescope = true
            vim.g.doom_one_plugin_neogit = true
            vim.g.doom_one_plugin_nvim_tree = true
            vim.g.doom_one_plugin_dashboard = true
            vim.g.doom_one_plugin_startify = true
            vim.g.doom_one_plugin_whichkey = true
            vim.g.doom_one_plugin_indent_blankline = true
            vim.g.doom_one_plugin_vim_illuminate = true
            vim.g.doom_one_plugin_lspsaga = false
            vim.cmd([[colorscheme doom-one]])
        end,
    }
}
