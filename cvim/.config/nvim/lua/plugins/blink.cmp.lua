return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		{
			"L3MON4D3/LuaSnip",
			build = (function()
				return "make install_jsregexp"
			end)(),
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load({
							exclude = { "java" }, -- JDTLS provides its own snippets
						})
					end,
				},
			},
			opts = {},
		},
	},
	build = function()
		require("blink.cmp").build():pwait()
	end,

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "super-tab" },
		completion = { documentation = { auto_show = false } },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		fuzzy = { implementation = "lua" },
	},
}
