-- lualine
-- https://github.com/nvim-lualine/lualine.nvim
-- local theme = require 'lualine.themes.gruvbox-material'

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup {
      options = { theme = 'gruvbox' },
    }
  end,
}
