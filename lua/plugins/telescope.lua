return {
	{
		-- Telescope is a plugin used to grep through files
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = {'nvim-lua/plenary.nvim'},
		config = function()
			-- Loads the default keys for telescope
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
		end
	},
	{
		-- This is a plugin to allow our code options to come up as a nice ui
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						-- even more opts
						}
					}
				}
			})

			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end
	}
}
