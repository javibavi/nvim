return {
	-- Package for better syntax highlighting
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- Gives us access to the functions to config treesitter
		local config = require("nvim-treesitter.configs")
		config.setup({
			-- Ensures we have syntax highlighting installed for any language we encounter
			auto_install = true,

			-- Enables highlighting and indenting
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
