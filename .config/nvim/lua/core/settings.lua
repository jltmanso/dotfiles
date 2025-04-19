-- Set <space> as leader key
-- See `:help mapleader`
--   Note: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Netrw Shortcut
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--   Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful to resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between operating system and Neovim.
--   Remove this option if you want your OS clipboard to remain independent.
--   See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or mote capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Configure <TAB> to be 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.spelllang = "en_us"

-- Sets how neovim will display certain whitespace characters in the editor.
--   See `:help 'list'`
--   and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor in on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if nvim starts with a directory as an argument, `cd` into it
if vim.fn.argc() == 1 then
    local arg = vim.fn.argv()[1]
    if vim.fn.isdirectory(arg) == 1 then
        vim.fn.chdir(arg)
    end
end

