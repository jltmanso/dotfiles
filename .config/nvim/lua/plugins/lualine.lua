return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  priority = 1000,
  --dependencies = {
   -- "DaikyXendo/nvim-material-icon"
  --},
  opts = {
    options = {
      theme = "tokyonight",
      globalstatus = true,
    },
  },
  config = function()
    require('lualine').setup({
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = {
          function()
            local ok, pomo = pcall(require, "pomo")
            if not ok then
              return ""
            end

            local timer = pomo.get_first_to_finish()
            if timer == nil then
              return ""
            end

            return "󰄉 " .. tostring(timer)
          end,
          "encoding",
          "fileformat",
          "filetype",
        },
      },
    })
  end
}
  --{
  --  "DaikyXendo/nvim-material-icon",
  --  dependencies = {
  --    "nvim-tree/nvim-web-devicons"
  --  },
  --  lazy = false,
  --  config = function()
  --    require("nvim-web-devicons").setup({
  --      override = require("nvim-material-icon").get_icons(),
  --    })
  --  end,
  --},
