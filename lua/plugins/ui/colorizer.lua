-- Plugin to highlight colors (like tan)
return {
	"NvChad/nvim-colorizer.lua",
	event = "VeryLazy",
	config = function()
		require("colorizer").setup()
	end,
}
