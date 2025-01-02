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
	end,
}
