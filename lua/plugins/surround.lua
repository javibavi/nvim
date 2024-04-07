-- This is used to surround things in parentheses and quotations more easily
return {
	"kylechui/nvim-surround",
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
			keymaps = {
				insert = "<C-g>s",
				insert_line = "<C-g>S",
				normal = "<leader>s",
				normal_cur = "<leader>ss", -- Use this
				normal_line = "<leader>S",
				normal_cur_line = "<leader>SS", -- Probably use this if you need to
				visual = "<leader>s", -- Most def use this
				visual_line = "<leader>S", -- Maybe this too
				delete = "ds", -- Use this
				change = "cs", -- Use this
				change_line = "cS",
			},
		})
	end,
}
