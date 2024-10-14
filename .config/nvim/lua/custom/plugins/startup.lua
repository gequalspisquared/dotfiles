-- startup.nvim
-- https://github.com/max397574/startup.nvim

return {
  'max397574/startup.nvim',

  config = function()
    require('startup').setup {
      theme = 'dashboard',
    }
  end,
}
