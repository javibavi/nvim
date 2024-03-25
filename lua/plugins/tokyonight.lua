return {
	-- This is the colorscheme plugin
	"folke/tokyonight.nvim",
  	lazy = false,
  	priority = 1000,
  	opts = {},

	config = function()
		-- Sets the color scheme of the editor

		require("tokyonight").setup({
			style = "night",
			transparent = true,
			terminal_colors = true,

			styles = {
				comments = {italic = true}
			},
		})
		vim.cmd[[colorscheme tokyonight]]
	end
}
