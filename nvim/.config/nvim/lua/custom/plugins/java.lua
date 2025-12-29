return {
  'nvim-java/nvim-java',
  dependencies = {
    'neovim/nvim-lspconfig',
  },
  priority = 100,
  config = function()
    require('java').setup() -- This line is MANDATORY
  end,
}
