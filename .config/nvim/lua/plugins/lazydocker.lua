return {
    'BrunoKrugel/lazydocker.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    cmd = {
        'LazyDocker',
    },
    config = function()
        require('telescope').load_extension('lazydocker')
    end,
}
