-- which-key
-- https://github.com/folke/which-key.nvim
--
-- Useful plugin to show you pending keybinds.

return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()
    -- Document existing key chains
    require('which-key').add {
      { '<leader>c', name = '[C]ode' },
      { '<leader>d', name = '[D]ocument' },
      { '<leader>g', name = '[G]it' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      { '<leader>r', name = '[R]ename' },
      { '<leader>s', name = '[S]earch' },
      { '<leader>t', name = '[T]oggle' },
      { '<leader>w', name = '[W]orkspace' },

      -- register which-key VISUAL mode
      -- required for visual <leader>hs (hunk stage) to work
      { '<leader>', name = 'VISUAL <leader>', mode = { 'v' } },
    }
    -- {
    --   ['<leader>c'] = { group = '[C]ode' },
    --   ['<leader>c_'] = { hidden = true },
    --   ['<leader>d'] = { group = '[D]ocument' },
    --   ['<leader>d_'] = { hidden = true },
    --   ['<leader>r'] = { group = '[R]ename' },
    --   ['<leader>r_'] = { hidden = true },
    --   ['<leader>s'] = { group = '[S]earch' },
    --   ['<leader>s_'] = { hidden = true },
    --   ['<leader>w'] = { group = '[W]orkspace' },
    --   ['<leader>w_'] = { hidden = true },
    --   ['<leader>t'] = { group = '[T]oggle' },
    --   ['<leader>t_'] = { hidden = true },
    --   ['<leader>h'] = { desc = 'Git [H]unk' },
    --   ['<leader>h_'] = { hidden = true },
    -- }
    -- -- visual mode
    -- require('which-key').add({
    --   ['<leader>h'] = { 'Git [H]unk' },
    --   -- ['<leader>h'] = { desc = 'Git [H]unk', mode = 'v' },
    -- }, { mode = 'v' })
  end,
}
