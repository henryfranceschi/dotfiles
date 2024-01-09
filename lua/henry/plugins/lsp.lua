return {
    {
        'folke/neodev.nvim',
        opts = {},
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim',
            'neovim/nvim-lspconfig',
            { 'folke/neoconf.nvim', optional = true },
            { 'folke/neodev.nvim', optional = true },
        },
        config = function()
            require('mason').setup()
            require('mason-lspconfig').setup()

            local capabilities = nil
            if require('cmp') and require('cmp_nvim_lsp') then
                capabilities = require('cmp_nvim_lsp').default_capabilities()
            end

            -- Automatically setup language servers installed via mason.
            require('mason-lspconfig').setup_handlers {
                -- The default handler that will be used for all installed language servers that do
                -- not have a dedicated handler.
                function(server_name)
                    require('lspconfig')[server_name].setup {
                        capabilities = capabilities
                    }
                end,
                ['lua_ls'] = function()
                    require('lspconfig').lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                workspace = {
                                    checkThirdParty = false,
                                },
                                telemetry = {
                                    enable = false,
                                },
                            },
                        },
                    }
                end,
                ['rust_analyzer'] = function()
                    require('lspconfig').rust_analyzer.setup {
                        capabilities = capabilities,
                        settings = {
                            ['rust-analyzer'] = {
                                check = {
                                    command = 'clippy'
                                },
                                format = {
                                    command = 'fmt'
                                },
                            },
                        },
                    }
                end
            }

            -- Key maps.
            local function client_is_active(name)
                local clients = vim.lsp.get_active_clients();

                for _, client in pairs(clients) do
                    if client['name'] == name then
                        return true
                    end
                end

                return false
            end

            vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_next)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_prev)

            -- Only map keys after the language server attaches to the current buffer.
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local opts = { buffer = args.buf, remap = false }

                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', '<leader>vws', vim.lsp.buf.workspace_symbol, opts)
                    vim.keymap.set('n', '<leader>vca', vim.lsp.buf.code_action, opts)
                    vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename, opts)
                    vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, opts)
                    vim.keymap.set('n', '<leader>vf', vim.lsp.buf.format, opts)

                    -- C/C++ specific key maps.
                    if (client_is_active('clangd')) then
                        vim.keymap.set('n', '<leader>sh', '<cmd>ClangdSwitchSourceHeader<cr>')
                    end
                end
            })
        end
    },
    {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        dependencies = { 'williamboman/mason-lspconfig.nvim' },
        opts = {},
    },
}
