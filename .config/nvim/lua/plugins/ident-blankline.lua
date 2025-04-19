return {
  'lukas-reineke/indent-blankline.nvim',
  dependencies = {
    'HiPhish/rainbow-delimiters.nvim',
  },
  event = 'BufReadPre',
  config = function ()
    local highlight = {
      'RainbowRed',
      'RainbowYellow',
      'RainbowBlue',
      'RainblowOrange',
      'RainbowGreen',
      'RainbowViolet',
      'RainbowCyan',
    }

    local hooks = require('ibl.hooks')
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function ()
      vim.api.nvim_set_hl(0, 'RainbowRed',     { fg = '#E06C75' })
      vim.api.nvim_set_hl(0, 'RainbowYellow',  { fg = '#E5C07B' })
      vim.api.nvim_set_hl(0, 'RainbowBlue',    { fg = '#61AFEF' })
      vim.api.nvim_set_hl(0, 'RainblowOrange', { fg = '#D19A66' })
      vim.api.nvim_set_hl(0, 'RainbowGreen',   { fg = '#98C379' })
      vim.api.nvim_set_hl(0, 'RainbowViolet',  { fg = '#C678DD' })
      vim.api.nvim_set_hl(0, 'RainbowCyan',    { fg = '#56B6C2' })
    end)

    vim.g.rainbow_delimiters = { highlight = highlight }

    require('ibl').setup({
      scope = {
        show_start = false,
        show_end = false,
        highlight = highlight
      },
      indent = {
        --highlight = highlight,
      },
      whitespace = {
        highlight = { 'whitespace' },
        remove_blankline_trail = false,
      }
    })

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end
}
