-- This is a plugin used to create a dashboard
return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			hide = {
				tabline = false,
				statusline = false,
			},
			config = {
				header = {
					"",
					"",
					"",
					"",
					"",
					"     ██╗     █████╗     ██╗   ██╗    ██╗                ██████╗      █████╗     ██╗   ██╗    ██╗",
					"     ██║    ██╔══██╗    ██║   ██║    ██║                ██╔══██╗    ██╔══██╗    ██║   ██║    ██║",
					"     ██║    ███████║    ██║   ██║    ██║                ██████╔╝    ███████║    ██║   ██║    ██║",
					"██   ██║    ██╔══██║    ╚██╗ ██╔╝    ██║                ██╔══██╗    ██╔══██║    ╚██╗ ██╔╝    ██║",
					"╚█████╔╝    ██║  ██║     ╚████╔╝     ██║    ███████╗    ██████╔╝    ██║  ██║     ╚████╔╝     ██║",
					" ╚════╝     ╚═╝  ╚═╝      ╚═══╝      ╚═╝    ╚══════╝    ╚═════╝     ╚═╝  ╚═╝      ╚═══╝      ╚═╝",
				}, --your header
				center = { {
					desc = "Welcome To Neovim",
					desc_hl = "String",
				} },
			},
		})
	end,
}
