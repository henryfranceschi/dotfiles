require("config")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd.colorscheme "catppuccin"

-- vim.lsp.config("*", {
--     capabilities = vim.lsp.protocol.make_client_capabilities()
-- })

-- Extend the config.
-- vim.lsp.config('rust_analyzer', {})
-- vim.lsp.enable('rust_analyzer')
