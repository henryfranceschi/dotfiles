return {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
    config = function ()
        local opts = { silent = true, noremap = true }
        vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>', opts)
        vim.keymap.set('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', opts)
        vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', opts)
        vim.keymap.set('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>', opts)
        vim.keymap.set('n', '<leader>xr', '<cmd>TroubleToggle lsp_references<cr>', opts)
    end
}
