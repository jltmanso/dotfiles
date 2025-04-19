return {
    'Shatur/neovim-session-manager',
    lazy = false,
    priority = 100,
    config = function ()
        local config = require('session_manager.config')
        local path = require('plenary.path')
        require('session_manager').setup({
            sessions_dir = path:new(vim.fn.stdpath('data'), 'sessions'),
            autoload_mode = {
                config.AutoloadMode.Disabled,
                config.AutoloadMode.CurrentDir,
                config.AutoloadMode.LastSession,
            },
            autosave_last_session = true,
            autosave_ignore_not_normal = true,
            autosave_ignore_dirs = {},
            autosave_ignore_filetypes = {
                'gitcommit',
                'gitrebase',
            },
            autosave_ignore_buftypes = {},
            autosave_only_in_sessions = false,
            max_path_length = 80,
        })

        -- Auto save session
        vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
            callback = function ()
                for _, buf in ipairs(vim.api.nvim_list_bufs()) do
                    -- Don't save while there's any 'nofile' buffer open.
                    if vim.api.nvim_get_option_value("buftype", { buf = buf }) == 'nofile' then
                        return
                    end
                end
                require('session_manager').save_current_session()
            end,
        })
    end,
}

