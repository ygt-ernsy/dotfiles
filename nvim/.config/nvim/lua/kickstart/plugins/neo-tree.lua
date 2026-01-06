-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      use_libuv_file_watcher = true, -- Auto-refresh on file system changes
      follow_current_file = {
        enabled = true, -- Focus the file you're editing
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    git_status = {
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
