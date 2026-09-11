require("config.options")
require("config.keybinds")
require("config.lazy")

-- Highlight when yanking (stolen from kickstart)
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("custom-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- for better relative line number colors
local function UpdateLineNumberColors()
	local color_above = vim.api.nvim_get_hl(0, { name = "Directory" })
	local color_below = vim.api.nvim_get_hl(0, { name = "Statement" })

	local color_current = vim.api.nvim_get_hl(0, { name = "CursorLineNr" })

	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = color_above.fg, bold = true })
	vim.api.nvim_set_hl(0, "LineNr", { fg = color_current.fg, bold = true })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = color_below.fg, bold = true })
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = UpdateLineNumberColors,
})
UpdateLineNumberColors()
