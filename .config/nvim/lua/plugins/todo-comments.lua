-- todo-comments.nvim
-- https://github.com/folke/todo-comments.nvim
--
-- Highlight TODO and NOTE comments

return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
}
