---@module "lazy"
---@type LazyPluginSpec[]
return {
    {
        "NeogitOrg/neogit",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>gg",
                "<cmd>Neogit<cr>",
                desc = "Show Neogit"
            },
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        keys = {
            {
                "<leader>gb",
                "<cmd>Gitsigns toggle_current_line_blame<cr>",
                desc = "Git toggle blame",
            },
            {
                "<leader>gs",
                "<cmd>Gitsigns stage_hunk<cr>",
                desc = "Git stage hunk",
            },
        },
    },
}
