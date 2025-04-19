-- [[ Install `lazy.nvim` plugin manager ]]
--  See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info

local lazypath = vim.fn.stdpath 'data' .. 'lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        lazyrepo,
        lazypath
    })
end ---@diagnostic disable-next-line: undefined-field

vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
require('lazy').setup('plugins', {
    defaults = {
        lazy = true,
    },
    git = {
        log = { -10 },
        timeout = 120,
        url_format = 'https://github.com/%s.git',
        filter = true,
    },
    pkg = {
        enabled = true,
        cache = vim.fn.stdpath('state') .. 'lazy/pkg-cache.lua',
        versions = true,
        sources = {
            'lazy',
            'rockspec',
            'packspec',
        },
    },
    rocks = {
        root = vim.fn.stdpath('data') .. '/lazy-rocks',
        server = 'https://nvim-neorocks.github.io/rocks-binaries/',
    },
    install = {
        missing = true,
        colorscheme = {
            'tokyonight'
        },
    },
    ui = {
        wrap = true,
        border = 'none',
        backdrop = 60,
        title = nil,
        title_pos = 'center',
    },
    diff = {
        cmd = 'git',
    },
    checker = {
        enabled = true,
        concurrency = nil,
        notify = true,
        frequency = 3600,
    },
    change_detection = {
        enable = true,
        notify = true,
    },
    performance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true,
        rtp = {
            reset = true,
            disable_plugins = {
                "netrwPlugin"
            },
        },
    },
    profiling = {
        loader = false,
        require = false,
    },
})

vim.cmd.colorscheme("tokyonight-night")
