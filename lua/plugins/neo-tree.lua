return {
	-- Plugin for a file tree
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
     	"nvim-tree/nvim-web-devicons",
      	"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Sets a keymap to allow us to open neotree on the right
		vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle right<CR>')
	end
}
