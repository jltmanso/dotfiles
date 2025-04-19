return {
    'epwalsh/obsidian.nvim',
    version = '*',
    ft = 'markdown',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function ()
        require('obsidian').setup({
            workspaces = {
                {
                    name = "vault",
                    path = "~/vault/",
                },
            },
            completion = {
                nvim_cmp = true,
                min_chars = 2,
            }
        })
    end
}
