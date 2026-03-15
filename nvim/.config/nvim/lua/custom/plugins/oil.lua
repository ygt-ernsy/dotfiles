return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
  dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {} }, { 'FerretDetective/oil-git-signs.nvim' } },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require('oil').setup {
      -- Add the "vcs_status" column here
      columns = {
        'icon',
        'oil-git-signs',
      },
      -- Optional: Configure the signs to your liking
      win_options = {
        signcolumn = 'yes:2', -- Ensures there is room for the signs
      },
    }

    -- Initialize the status plugin
    require('oil-git-signs').setup {}
  end,
}
