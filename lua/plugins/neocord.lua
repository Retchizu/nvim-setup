return {
	"IogaMaster/neocord",
	event = "VeryLazy",
	config = function()
		require("neocord").setup({
			logo = "auto", -- or provide a URL to a custom logo
			main_image = "language", -- options: "language" or "logo"
			show_time = true,
			editing_text = "Editing %s",
			file_explorer_text = "Browsing %s",
		})
	end,
}
