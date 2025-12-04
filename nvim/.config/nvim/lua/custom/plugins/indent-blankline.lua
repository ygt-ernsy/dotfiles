return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    -- This section enables Treesitter-based indent guides
    scope = {
      enabled = true,
      show_start = true, -- Show a line where the scope starts
      show_end = true, -- Show a line where the scope ends
    },

    -- Keep your excludes for the dashboard
    exclude = {
      filetypes = {
        'dashboard',
        'lazy',
        'neo-tree',
        'TelescopePrompt',
        'help',
        'noice',
        'qf',
      },
      buftypes = { 'terminal' },
    },
  },
}
