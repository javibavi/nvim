-- Plugin to make sorting through errors not annoying
return {
	"folke/trouble.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("trouble").setup({
			position = "right",
			width = 70,
		})
		vim.keymap.set("n", "<leader>xw", function()
			require("trouble").toggle("workspace_diagnostics")
		end)
		vim.keymap.set("n", "<leader>xd", function()
			require("trouble").toggle("document_diagnostics")
		end)
		vim.keymap.set("n", "<leader>xq", function()
			require("trouble").toggle("quickfix")
		end)
		vim.keymap.set("n", "<leader>xl", function()
			require("trouble").toggle("loclist")
		end)
	end,
}
