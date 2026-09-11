local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

-- colorschem dynamic changing
local theme_path = vim.fn.expand("~/.config/current/theme/neovim.lua")

if 1 then
	return dofile(theme_path)
else
	-- falback colorscheme
	return {
		{
			"folke/tokyonight.nvim",
			config = function()
				vim.cmd.colorscheme("tokyonight")
				enable_transparency()
			end,
		},
	}
end
