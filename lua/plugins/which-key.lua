return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")

		wk.register({
			f = {
				name = "Find",
				f = "File",
				g = "Grep",
				b = "Buffers",
				h = "Help",
				r = "Registers",
				a = "Code Actions",
			},
			n = {
				name = "Neotree",
				r = "Reveal",
				f = "Focus",
			},
			g = {
				name = "LSP",
				d = "Go To Definition",
				f = "Format The File",
			},
			b = {
				name = "Buffers",
				p = "Pin",
				c = "Close",
				b = "Order By Buffer Number",
				d = "Order By Buffer Directory",
				l = "Order By Buffer Language",
				w = "Order By Buffer Window Number",
			},
		}, { prefix = "<leader>" })
	end,
}
