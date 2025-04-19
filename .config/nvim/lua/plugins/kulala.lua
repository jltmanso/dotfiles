return {
    'mistweaverco/kulala.nvim',
    lazy = false,
    config = function()
        require('kulala').setup({
            default_view = 'body',
            debug = false,
            formatters = {
                json = { "jq", "." },
                xml = { 'xmllint', '--format', '-' },
                html = { 'xmllint', '--format', '--html', '-' }
            },
            icons = {
                inlay = {
                    loading = '⏳',
                    done = '✅',
                    error = '❌'
                },
                lualine = '🐼'
            },
--            additional_curl_options = { '--location --netrc' },
        })

        vim.filetype.add({
            extension = {
                ['http'] = 'http',
            }
        })

        vim.api.nvim_set_keymap("n", "<leader>rp", ":lua require('kulala').jump_prev()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>rn", ":lua require('kulala').jump_next()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>rr", ":lua require('kulala').run()<CR>", { noremap = true, silent = true })

    end,
}
