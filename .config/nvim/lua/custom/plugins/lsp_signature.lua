-- lsp_signature
-- https://github.com/ray-x/lsp_signature.nvim

return {
  'ray-x/lsp_signature.nvim',
  event = 'InsertEnter',
  opts = {
    bind = true,
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
