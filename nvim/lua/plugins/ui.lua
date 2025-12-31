---@module "lazy"
---@type LazyPluginSpec[]
return {
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            extensions = {
                "nvim-tree",
            }
        },
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
}
