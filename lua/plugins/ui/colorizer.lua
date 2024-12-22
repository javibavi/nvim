-- Plugin to highlight colors (like tan)
return {
	"catgoose/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
	end,
}
