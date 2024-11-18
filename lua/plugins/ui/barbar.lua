-- Plugin that allows for buffers to show up as tabs
return {
	"romgrk/barbar.nvim",
	init = function()
		vim.g.barbar_auto_setup = true
	end,
}
