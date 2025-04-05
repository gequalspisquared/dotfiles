-- nvim-tree.lua
-- https://github.com/nvim-tree/nvim-tree.lua
--
-- Provide a file-tree

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    view = {
      side = 'right',
    },
  },

  -- Keymaps
  vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', { desc = 'Open file tree' }),
}
