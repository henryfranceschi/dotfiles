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
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit" },
        },
    },
}
