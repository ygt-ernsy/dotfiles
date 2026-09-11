vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- for listening to the clipboard migth not be needed later?
vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.opt.cmdheight = 0

vim.o.updatetime = 250

vim.g.have_nerd_font = true

-- save undo history
vim.o.undofile = true

vim.o.signcolumn = "yes"
