return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.statusline').setup()
  end
  --  'nvim-lualine/lualine.nvim',
  --  dependencies = { 'nvim-tree/nvim-web-devicons' },
  --  config = function()
  --    require('lualine').setup()
  --  end
}
