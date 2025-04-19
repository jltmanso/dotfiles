return {
    'coffebar/neovim-project',
    lazy = false,
    priority = 100,
    opts = {
        projects = {
--            '~/.config/*',
            '~/*/integration/*',
            '~/*/projects/*',
            '~/*/*/projects/*',
            '~/*/dockers/*',
        },
    },
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
}
