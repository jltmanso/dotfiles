return {
    'LintaoAmons/scratch.nvim',
    event = 'VeryLazy',
    config = function ()
        require('scratch').setup({
            scratch_file_dir = vim.fn.stdpath('cache') .. '/scratch.nvim',
            filetypes = {
                'c',
                'cpp',
                'python',
                'sh',
            },
            filetype_details = {},
            window_cmd = 'rightbelow vsplit',
            use_telescope = true,
            localKeys = {
                {
                    filenameContains = { 'sh' },
                    LocalKeys = {
                        {
                            cmd = '<CMD>RunShellCurrentLine<CR>',
                            key = '<C-r>',
                            modes = { 'n', 'i', 'v'},
                        },
                    },
                },
            },
        })
    end
}
