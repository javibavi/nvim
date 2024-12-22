return {
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
		toggler = {
			---Line-comment toggle keymap
			line = "<leader>cl",
			---Block-comment toggle keymap
			block = "<leader>cb",
		},
		---LHS of operator-pending mappings in NORMAL and VISUAL mode
		opleader = {
			---Line-comment keymap
			line = "<leader>cl",
			---Block-comment keymap
			block = "<leader>cb",
		},
		---LHS of extra mappings
		extra = {
			---Add comment on the line above
			above = "<leader>cO",
			---Add comment on the line below
			below = "<leader>co",
			---Add comment at the end of line
			eol = "<leader>cA",
		},
		---Enable keybindings
		---NOTE: If given `false` then the plugin won't create any mappings
		mappings = {
			---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
			basic = false,
			---Extra mapping; `gco`, `gcO`, `gcA`
			extra = false,
		},
	},
	lazy = false,
}
