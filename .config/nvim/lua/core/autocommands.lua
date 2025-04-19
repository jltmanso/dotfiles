-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--   Try it with `yap` in normal mode
--   See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('coreihighlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Remove trailing whitespaces on save
--  It is triggered by `:wa`, `:w` or `Ctrl+s`
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    pattern = { '*' },
    command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd({ 'TermOpen' }, {
    pattern = { '*' },
    command = 'startinsert'
})

vim.api.nvim_create_autocmd('TermEnter', {
    callback = function()
        vim.fn.chansend(vim.b.terminal_job_id, 'update_vi_mode\n')
    end
})

--vim.api.nvim_create_autocmd({ 'BufLeave' }, {
--    pattern = { 'term://*' },
--    command = 'stopinsert'
--})
