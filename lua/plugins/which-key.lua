-- Plugin that gives a pop up with a list of all possible commands
return {
	"folke/which-key.nvim",

	-- We lazy load this plugin
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")

		-- This table creates the descriptions for each keybind
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
