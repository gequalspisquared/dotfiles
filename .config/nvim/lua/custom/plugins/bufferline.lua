-- bufferline
-- https://github.com/akinsho/bufferline.nvim

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {}
  end,

  -- Bindings
  vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Switch to next buffer' }),
  vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Switch to previous buffer' }),
  vim.keymap.set('n', '<C-W>c', ':bd<CR>', { desc = 'Close current buffer' }),
}
