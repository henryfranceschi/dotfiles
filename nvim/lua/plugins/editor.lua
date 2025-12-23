---@module "lazy"
---@type LazyPluginSpecHandlers[]
return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.1.9",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>ff",
                "<cmd>Telescope find_files<cr>",
                desc = "Find files (Telescope)",
            },
            {
                "<leader>fg",
                "<cmd>Telescope live_grep<cr>",
                desc = "Live grep (Telescope)",
            },
            {
                "<leader>fs",
                "<cmd>Telescope grep_string<cr>",
                mode = { "n", "v" },
                desc = "Grep string (Telescope)",
            },
            {
                "<leader>fb",
                "<cmd>Telescope buffers<cr>",
                desc = "Find buffers (Telescope)",
            },
            {
                "<leader>fh",
                "<cmd>Telescope help_tags<cr>",
                desc = "Find help tags (Telescope)",
            },
            {
                "<leader>fr",
                "<cmd>Telescope lsp_references<cr>",
                desc = "Find references (Telescope)",
            },
            {
                "<leader>fds",
                "<cmd>Telescope lsp_document_symbols<cr>",
                desc = "Find document symbols(Telescope)",
            },
            {
                "<leader>fws",
                "<cmd>Telescope lsp_workspace_symbols<cr>",
                desc = "Find workspace symbols(Telescope)",
            },
        },
    },
    {
        "folke/trouble.nvim",
        ---@module "trouble"
        ---@type trouble.Config
        opts = {
            warn_no_results = false,
        },
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)",
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)",
            },
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)",
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)",
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)",
            },
        },
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
        },
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
}
