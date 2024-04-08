-- Returns the plugin table for codeium integration in neovim (this was comment was generated with codeium#generate_comments)
return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		vim.keymap.set("i", "<A-a>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<A-n>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<A-p>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<A-x>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true, silent = true })
	end,
}
