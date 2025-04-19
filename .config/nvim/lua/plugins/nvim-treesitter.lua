return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        opts = {
            ensure_installed = {
                'bash',
                'c',
                'cpp',
                'diff',
                'html',
                'lua',
                'luadoc',
                'markdown',
                'python',
                'vim',
                'vimdoc'
            },
            -- Autoinstall languages that are not installed
            autoinstall = true,
            highlight = {
                enable = true,
                -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules
                --  If you are experiencing weird indenting issues, add the language to the list of
                --  additional_vim_regex_highlighting and disabled languages for indent.
                additional_vim_regex_highlighting = { 'ruby' }
            },
            indent = {
                enable = true,
                disable = {
                    'ruby'
                }
            },
        },
        config = function(_, opts)
            -- [[ Configure Treesitter  ]]
            --  See `:help nvim-treesitter`
            --
            -- Prefer git instead of curl in order to improve connectivity in some environments
            require('nvim-treesitter.install').prefer_git = true
            ---@diagnostic disable-next-line: missing-fields
            require('nvim-treesitter.configs').setup(opts)
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter-context',
        lazy = false,
        config = function()
            require('treesitter-context').setup({})
        end,
    },
}

