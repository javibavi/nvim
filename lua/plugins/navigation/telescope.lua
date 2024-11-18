return {
	{
		-- Telescope is a plugin used to grep through files
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		-- This is a plugin to allow our code options to come up as a nice ui
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})

			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
	-- Plugin used to look at the register history through telescope
	{
		"AckslD/nvim-neoclip.lua",
		config = function()
			require("neoclip").setup()
		end,
	},
	-- Plugin used to look at the undo history through telescope
	{
		"debugloop/telescope-undo.nvim",
	},
	config = function()
		require("telescope").load_extension("undo")
	end,
}
