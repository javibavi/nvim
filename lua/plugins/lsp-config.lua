-- This file contains all of our code necessary to install lsp servers and set them up
return {
	{
		-- Plugin that allows for easy installation of LSPs
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end
	},
	{
		-- Plugin that allows for certain lsps to be forcefully installed
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver", -- tsserver is for javascript (you never know when you gotta write in that awful language)
				}
			})
		end
	},
	{
		-- Plugin that allows Neovim to interact with our LSPs
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- Call the setup function for every LSP you have installed
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			-- Keybindings for LSP actions
			vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
