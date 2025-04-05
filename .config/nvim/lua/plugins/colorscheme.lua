-- You can easily change to a different colorscheme.

return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  -- 'sainnhe/gruvbox-material',
  'catppuccin/nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  -- opts = {
  --   transparent_background = true,
  -- },
  config = function()
    require('catppuccin').setup {
      transparent_background = true,
    }
  end,

  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    -- vim.g.gruvbox_material_background = 'soft'
    -- vim.g.gruvbox_material_better_performace = 1
    -- vim.cmd.colorscheme 'gruvbox-material'
    -- vim.g.catppuccin
    -- colorscheme catppuccin "catpu"
    vim.cmd.colorscheme 'catppuccin-macchiato'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
