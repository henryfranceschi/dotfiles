return {
    'folke/trouble.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        local trouble = require('trouble')
        trouble.setup {}
        -- trouble.toggle(trouble.diagnostics)

        local opts = { silent = true, noremap = true }
        vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', opts)
        vim.keymap.set('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics toggle<cr>', opts)
        vim.keymap.set('n', '<leader>xd', '<cmd>Trouble document_diagnostics toggle<cr>', opts)
        vim.keymap.set('n', '<leader>xq', '<cmd>Trouble quickfix toggle<cr>', opts)
        vim.keymap.set('n', '<leader>xr', '<cmd>Trouble lsp_references toggle<cr>', opts)
    end,
}
