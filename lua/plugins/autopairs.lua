-- Used to enable autopairs (which is whenever parentheses and brackets get autocompleted)
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = true,
	-- use opts = {} for passing setup options
	-- this is equalent to setup({}) function
}
