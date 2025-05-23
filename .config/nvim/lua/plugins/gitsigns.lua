return {
    'lewis6991/gitsigns.nvim',
    debug_mode = true,
    lazy = false,
    config = function()
        require('gitsigns').setup({
            signs = {
                add          = { text = '+' },
                change       = { text = '~' },
                changedelete = { text = '~' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                untracked    = { text = '┆' },
            },
            signcolumn = true,
            numhl = true,
            linehl = true,
            word_diff = false,
            watch_gitdir = {
                follow_files = true,
            },
            auto_attach = true,
            attach_to_untracked = false,
            current_line_blame = true,
            current_line_blame_opts = {
                virt_text = true,
                virt_txt_pos = 'eol',
                delay = 100,
                ignore_whitespace = false,
                virt_text_priority = 100,
            },
            current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil,
            max_file_length = 40000,
            preview_config = {
                border = 'single',
                style = 'minimal',
                relative = 'cursor',
                row = 0,
                col = 1,
            },
        })
    end,
}
