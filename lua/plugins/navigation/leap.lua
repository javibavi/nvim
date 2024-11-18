-- Plugin that basically gives me everything I would want from a mouse but with the keyboard
return {
	"ggandor/leap.nvim",
	dependencies = {
		"tpope/vim-repeat",
	},
	config = function()
		require("leap").create_default_mappings()
	end,
}
