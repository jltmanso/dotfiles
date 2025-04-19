return {
    'kylechui/nvim-surround',
    lazy = false,
    version = '*',
    event = 'VeryLazy',
    config = function()
        require('nvim-surround').setup({

        })
    end,
}
