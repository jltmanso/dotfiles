-- [[ Basic Keymaps ]]
--   See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <ESC> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<ESC>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d',        vim.diagnostic.goto_prev,  { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d',        vim.diagnostic.goto_next,  { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- Note: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<ESC><ESC>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', 't', ':split | resize 10 | terminal<CR>' , { desc = 'Open terminal at bottom' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>',  '<cmd>echo "Use `h` to move!"<CR>')
vim.keymap.set('n', '<down>',  '<cmd>echo "Use `j` to move!"<CR>')
vim.keymap.set('n', ' <up> ',  '<cmd>echo "Use `k` to move!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use `l` to move!"<CR>')

-- Jump between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to window on the left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to window on the bottom' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to window on the top' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to window on the right' })

-- Resize windows
vim.keymap.set('n', '<M-h>', ':vertical resize +1<CR>', { desc = 'Expand to the left' })
vim.keymap.set('n', '<M-j>', ':resize +1<CR>',          { desc = 'Expand to the bottom' })
vim.keymap.set('n', '<M-k>', ':resize -1<CR>',          { desc = 'Expand to the top' })
vim.keymap.set('n', '<M-l>', ':vertical resize -1<CR>', { desc = 'Expand to the right' })

-- Save file with Ctrl+S in insert and normal mode
vim.keymap.set({'n', 'i'}, '<C-s>', '<cmd>wa<CR>', { desc = 'Save all buffers' })

-- Enable spellchecking
-- vim.keymap.set('n', '<leader>s', ':set spell!<CR>', { desc = 'Enable spellchecking'})

-- Cycle through buffers
vim.keymap.set('n', '<Delete>', ':bdelete<CR>',   { desc = 'Delete buffer'})
vim.keymap.set('n', '<Tab>',    ':bnext<CR>',     { desc = 'Next buffer'})
vim.keymap.set('n', '<C-Tab>',  ':bprevious<CR>', { desc = 'Previous buffer'})
