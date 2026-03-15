return {
  'seblyng/roslyn.nvim',
  ft = 'cs',
  dependencies = {
    {
      -- We need the actual server binaries
      'mason.nvim',
      opts = {
        registries = {
          'github:Crashdummyy/mason-registry',
          'github:mason-org/mason-registry',
        },
      },
    },
  },
  config = function()
    require('roslyn').setup {
      args = {
        '--logLevel=Information',
        '--extensionLogDirectory=' .. vim.fs.dirname(vim.lsp.get_log_path()),
      },
      config = {
        -- Your standard LSP on_attach and capabilities here
        on_attach = on_attach,
        capabilities = capabilities,
      },
    }
  end,
}
