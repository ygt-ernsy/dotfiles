return {
  'github/copilot.vim',
  config = function()
    -- Disable default Tab mapping (conflicts with completion)
    vim.g.copilot_no_tab_map = true

    -- Use Ctrl+l to accept Copilot suggestion
    vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = 'Accept Copilot suggestion',
    })

    -- Optional: navigate between Copilot suggestions
    vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)', { desc = 'Next Copilot suggestion' })
    vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)', { desc = 'Previous Copilot suggestion' })
    vim.keymap.set('i', '<M-\\>', '<Plug>(copilot-dismiss)', { desc = 'Dismiss Copilot suggestion' })
  end,
}
