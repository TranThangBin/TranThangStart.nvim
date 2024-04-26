return {
	"startup-nvim/startup.nvim",

	opts = function()
		local dashboard = require("startup.themes.dashboard")

		dashboard.header.content = {
			"████████╗████████╗ ██████╗████████╗ █████╗ ██████╗ ████████╗   ███╗  ██╗██╗   ██╗██╗███╗   ███╗",
			"╚══██╔══╝╚══██╔══╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝   ████╗ ██║██║   ██║██║████╗ ████║",
			"   ██║      ██║   ╚█████╗    ██║   ███████║██████╔╝   ██║      ██╔██╗██║╚██╗ ██╔╝██║██╔████╔██║",
			"   ██║      ██║    ╚═══██╗   ██║   ██╔══██║██╔══██╗   ██║      ██║╚████║ ╚████╔╝ ██║██║╚██╔╝██║",
			"   ██║      ██║   ██████╔╝   ██║   ██║  ██║██║  ██║   ██║   ██╗██║ ╚███║  ╚██╔╝  ██║██║ ╚═╝ ██║",
			"   ╚═╝      ╚═╝   ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚═╝╚═╝     ╚═╝",
		}

		dashboard.quote = {
			type = "text",
			oldfiles_directory = false,
			align = "center",
			fold_section = false,
			title = "quote",
			margin = 5,
			content = require("startup.functions").quote,
			highlight = "String",
			default_color = "#FF0000",
			oldfiles_amount = 5,
		}

		dashboard.body.content = {
			{ "    New Buffer", "enew", "<leader>nb" },
			{ "🖿    File Explorer", "Explore", "<leader>fe" },
			{ "☰    Marked Files", 'lua require("harpoon.ui").toggle_quick_menu()', "<leader>hm" },
			{ "    Git Status", "Git", "<leader>gs" },
			{ "    Find File", "Telescope find_files", "<leader>ff" },
			{ "󰍉    Find Word", "Telescope live_grep", "<leader>lg" },
			{ "    Recent Files", "Telescope oldfiles", "<leader>of" },
		}

		table.insert(dashboard.parts, 2, "quote")

		return dashboard
	end,
}
