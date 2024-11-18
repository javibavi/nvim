-- Installs the package lazy.nvim so that we have a package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Loads the lazy package manager and vim settings
require("vim-options")
require("mappings")
-- Recursively load all plugin files in lua/plugins and subdirectories
local plugin_specs = {}
local plugin_files = vim.fn.glob(vim.fn.stdpath("config") .. "/lua/plugins/**/*.lua", true, true)

for _, file in ipairs(plugin_files) do
	-- Convert file path to Lua module path (e.g., plugins/lsp -> plugins.lsp)
	local module_path = file:match("lua/(.+)%.lua$"):gsub("/", ".")
	table.insert(plugin_specs, require(module_path))
end

-- Load the plugin specifications
require("lazy").setup(plugin_specs)
