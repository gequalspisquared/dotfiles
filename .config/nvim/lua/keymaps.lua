-- Custom keymaps

return {
  vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move [U]p half a page' }),
  vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move [D]own half a page' }),
  vim.keymap.set('n', 'G', 'Gzz', { desc = 'Move [D]own half a page' }),

  -- Move highlighted block up and down
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv"),
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv"),

  -- Center when searching text
  vim.keymap.set('n', 'J', 'mzJ`z'),
  vim.keymap.set('n', 'n', 'nzzzv'),
  vim.keymap.set('n', 'N', 'Nzzzv'),

  -- Diagnostic keymaps
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' }),
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' }),
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' }),
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' }),
}
