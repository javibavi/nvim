-- None-ls is a tool used for making formatters and linters behave like LSPs
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			-- Our sources table is where we will setup new formatters and linters
			-- To actually use them, however, we must install them with mason
			sources = {

				-- Sources for lua
				null_ls.builtins.formatting.stylua,

				-- Sources for python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.mypy,
			},
		})
		-- This keymap sets our file to follow coding conventions for whatever language is in our active buffer
		-- For Lua, this will turn all single quotes to double quotes
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
