-- Plugin to highlight colors (like tan)
return {
	"NvChad/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
	end,
}
