return {
	{
		"vague-theme/vague.nvim",
		lazy = false, -- load during startup since this is the main colorscheme
		priority = 1000, -- load before other start plugins
		opts = {
			-- 1. Makes the main editor background transparent
			transparent = true,

			styles = {
				-- 2. Makes sidebars (like Neo-tree) and regular floating windows transparent
				sidebars = "transparent",
				floats = "transparent",
			},

			-- 3. Specifically target the completion popup menu (Pmenu)
			on_highlights = function(hl, c)
				hl.Pmenu = { bg = "NONE" } -- Makes the completion menu background transparent
				hl.PmenuSel = { bg = c.bg_visual } -- Keeps the highlight on the item you have selected
				hl.NormalFloat = { bg = "NONE" } -- Ensures all other floats are fully transparent
				hl.FloatBorder = { bg = "NONE" } -- Makes the borders of floating windows transparent
			end,
		},
		config = function(_, opts)
			require("vague").setup(opts)
			vim.cmd.colorscheme("vague")
		end,
	},
}
