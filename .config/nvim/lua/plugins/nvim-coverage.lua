return {
  'andythigpen/nvim-coverage',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function ()
    require('coverage').setup({
      commands = true,
      highlights = {
        covered = { fg = '#C3E88D' },
        uncovered = { fg = '#F07178' },
      },
      signs = {
        covered = {
          hl = 'CoverageCovered',
          text = '▎'
        },
        uncovered = {
          hl = "CoverageUncovered",
          text = "▎",
        },
      },
      summary = {
        min_coverage = 80.0,
      },
      lang = {
        -- Customize language specific settings

      },
    })
  end,
}

