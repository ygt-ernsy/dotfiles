return {
	{
		"rose-pine/neovim",
		lazy = false, -- load during startup since this is the main colorscheme
		priority = 1000, -- load before other start plugins

		opts = {
			styles = {
				transparency = true,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
