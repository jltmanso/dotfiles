return {
    'rgroli/other.nvim',
    config = function ()
        require('other-nvim').setup({
            style = {
                border = 'solid',
                seperator = '|',
                width = 0.7,
                minHeight = 2,
            },
        })
    end
}
