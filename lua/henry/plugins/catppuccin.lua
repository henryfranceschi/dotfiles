return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
        integrations = {
            cmp = true,
            telescope = true,
            lsp_trouble = true,
            mason = true,
            neogit = true,
        }
    }
}
