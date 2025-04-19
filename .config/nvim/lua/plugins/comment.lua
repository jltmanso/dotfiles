return {
  -- Smart and powerful commenting plugin
  'numToStr/Comment.nvim',

  -- Add a space between comment and the line
  padding = true,

  -- Whether the cursor should stay at its position
  sticky = true,

  -- Lines to be ignored while (un)commenting
  ignore = nil,

  -- Function to be called before (un)commenting
  pre_hook = nil,

  -- Function to be called after (un)commenting
  post_hook = nil,

  -- LHS of toggle mappings in NORMAL mode
  toggler = {
    -- Line-comment toggle keymap
    line = 'gcc',

    -- Block-comment toggle keymap
    block = 'gbc',
  },

  opleader = {
    -- Line-comment keymap
    line = 'gc',

    -- Block-comment keymap
    block = 'gb'
  },

  -- LHS of extra mappings
  extra = {
    -- Add comment on the line above
    above = 'gcO',

    -- Add comment on the line below
    below = 'gco',

    -- Add comment at the end of the current line
    eol = 'gcA'
  },

  -- Enable keymappings
  mappings = {
    -- Operator-pending mappings
    basic = true,

    -- Extra mappings
    extra = true
  }
}

