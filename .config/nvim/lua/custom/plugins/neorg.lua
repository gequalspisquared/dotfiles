return {
  'nvim-neorg/neorg',
  lazy = false,
  opts = {
    load = {
      ['core.defaults'] = {}, -- Loads default behavior
      ['core.concealer'] = {
        config = {
          icon_preset = 'diamond', -- Optional visual tweak
          -- This is what makes @code blocks get highlighted
          folds = true,
        },
      },
      ['core.syntax'] = {}, -- Enable syntax module for highlighting inside @code
    },
  },
}
