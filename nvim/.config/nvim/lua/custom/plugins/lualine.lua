return {
  'nvim-lualine/lualine.nvim',
  -- Make sure noice is loaded before lualine
  dependencies = { 'folke/noice.nvim', 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- We'll cache the noice module so we don't have to call require() multiple times
    local noice_api = require 'noice'

    require('lualine').setup {
      options = {
        -- Match your colorscheme
        -- theme = 'tokyonight',
        theme = 'vague',
        icons_enabled = true,
        -- Use these for a cleaner look
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        -- Add some default sections so the statusline is useful
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },

        -- This is where your Noice snippet goes
        lualine_x = {
          {
            noice_api.api.statusline.mode.get,
            cond = noice_api.api.statusline.mode.has,
            color = { fg = '#ff9e64' },
          },
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}
