-- Plugin to get rich presence on discord. Its totally unnecessary but pretty cool
return {
	"andweeb/presence.nvim",
	event = "VeryLazy",
	config = function ()
		require("presence").setup({
			neovim_image_text = "Yobama is yo mama"
		})
	end
}
