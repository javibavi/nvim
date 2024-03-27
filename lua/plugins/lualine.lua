-- Status line for nvim with the dracula theme
return {
    'nvim-lualine/lualine.nvim',
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula"
			}
		})
	end
}
