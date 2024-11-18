return {
	-- Plugin for a file tree
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			-- Closes neovim if the only window open is neotree
			close_if_last_window = true,
			-- Sets the width of the window
			window = {
				width = 40,
			},
			-- Shows all files, including gitignored ones and dotfiles
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
	end,
}
