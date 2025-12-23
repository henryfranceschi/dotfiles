---@module "lazy"
---@type LazyPluginSpecHandlers[]
return {
    {
        "neovim/nvim-lspconfig",
        keys = {
            { "gd", vim.lsp.buf.definition, desc = "Go to definition" },
            { "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
            { "vf", vim.lsp.buf.format, desc = "Format buffer" },
            -- C/C++ specific mappings.
            { "<localleader>sh", "<cmd>LspClangdSwitchSourceHeader<cr>", ft = { "c", "cpp" }, desc = "Switch source and header" },
        },
    },
    {
        "mason-org/mason.nvim",
        ---@module "mason"
        ---@type MasonSettings
        opts = {
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        ---@module "mason-lspconfig"
        ---@type MasonLspconfigSettings
        opts = {
        },
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        ---@module "lazydev"
        ---@type lazydev.Config
        opts = {
            library = {
                -- Load luvit types when the `vim.uv` word is found.
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
