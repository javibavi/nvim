-- This file contains all of our code necessary to install lsp servers and set them up
return {
	{
		-- Plugin that allows for easy installation of LSPs
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		-- Plugin that allows for certain lsps to be forcefully installed
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"clangd",
				},
			})
		end,
	},
	{
		-- Plugin that allows Neovim to interact with our LSPs
		"neovim/nvim-lspconfig",
		config = function()
			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- Call the setup function for every LSP you have installed
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.clangd.setup{
				cmd = {
					"clangd",
					"--fallback-style=webkit"
				},
			}
		end,
	},
}
