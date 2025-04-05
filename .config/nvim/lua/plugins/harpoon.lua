-- harpoon
-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },

  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup {}
  end,

  -- keymaps
  vim.keymap.set('n', '<leader>a', function()
    local harpoon = require 'harpoon'
    harpoon:list():add()
  end, { desc = '[A]dd to Harpoon' }),
  -- basic telescope configuration
  vim.keymap.set('n', '<A-e>', function()
    local harpoon = require 'harpoon'
    local toggle_telescope = function(harpoon_files)
      local telescope_config = require('telescope.config').values
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = telescope_config.file_previewer {},
          sorter = telescope_config.generic_sorter {},
        })
        :find()
    end
    toggle_telescope(harpoon:list())
  end, { desc = 'Open Harpoon window' }),

  vim.keymap.set('n', '<A-h>', function()
    local harpoon = require 'harpoon'
    harpoon:list():select(1)
  end, { desc = '[A]dd to Harpoon' }),
  vim.keymap.set('n', '<A-j>', function()
    local harpoon = require 'harpoon'
    harpoon:list():select(2)
  end, { desc = '[A]dd to Harpoon' }),
  vim.keymap.set('n', '<A-k>', function()
    local harpoon = require 'harpoon'
    harpoon:list():select(3)
  end, { desc = '[A]dd to Harpoon' }),
  vim.keymap.set('n', '<A-l>', function()
    local harpoon = require 'harpoon'
    harpoon:list():select(4)
  end, { desc = '[A]dd to Harpoon' }),
}
