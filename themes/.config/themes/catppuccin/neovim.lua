return {
	{
		"catppuccin/nvim",
		lazy = false, -- load during startup since this is the main colorscheme
		priority = 1000, -- load before other start plugins
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin-nvim")
		end,
	},
}
