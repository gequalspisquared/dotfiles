-- Set default vim settings
require 'keymaps'
require 'options'

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Include plugins
require('lazy').setup({
  require 'plugins.bufferline',
  require 'plugins.colorscheme',
  require 'plugins.comment',
  -- require 'plugins.compiler',
  require 'plugins.conform',
  require 'plugins.gitsigns',
  require 'plugins.harpoon',
  require 'plugins.lazygit',
  require 'plugins.lsp_signature',
  require 'plugins.lualine',
  require 'plugins.nvim-autopairs', -- Add closing parentheses, etc.
  require 'plugins.nvim-cmp', -- Autocomplete
  require 'plugins.nvim-lspconfig', -- LSP
  require 'plugins.nvim-tree',
  require 'plugins.nvim-treesitter',
  require 'plugins.nvim-treesitter-context',
  -- require 'plugins.snacks',
  -- require 'plugins.startup',
  require 'plugins.telescope',
  require 'plugins.todo-comments',
  -- require 'plugins.vim-fugitive',
  require 'plugins.vim-sleuth',
  require 'plugins.vim-tmux-navigator',
  require 'plugins.which-key',
}, {
  ui = {
    border = 'rounded',
  },
})
