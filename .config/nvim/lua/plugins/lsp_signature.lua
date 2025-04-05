-- lsp_signature
-- https://github.com/ray-x/lsp_signature.nvim

return {
  'ray-x/lsp_signature.nvim',
  event = 'InsertEnter',
  config = function()
    require('lsp_signature').setup {
      bind = true,
      max_height = 10,
      max_width = function()
        return vim.api.nvim_win_get_width(0) * 0.5
      end,
    }
  end,
}
