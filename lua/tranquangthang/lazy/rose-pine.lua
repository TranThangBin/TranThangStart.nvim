return {
	"rose-pine/neovim",

	name = "rose-pine",

	opts = {
		variant = "auto",
		dark_variant = "main",
		dim_inactive_windows = false,
		extend_background_behind_borders = true,

		styles = {
			bold = true,
			italic = false,
			transparency = true,
		},

		groups = {
			border = "muted",
			link = "iris",
			panel = "surface",

			error = "love",
			hint = "iris",
			info = "foam",
			warn = "gold",

			git_add = "foam",
			git_change = "rose",
			git_delete = "love",
			git_dirty = "rose",
			git_ignore = "muted",
			git_merge = "iris",
			git_rename = "pine",
			git_stage = "iris",
			git_text = "rose",
			git_untracked = "subtle",

			headings = "subtle",
		},
	},

	config = function(_, opts)
		local rose_pine = require("rose-pine")

		rose_pine.setup(opts)
		rose_pine.colorscheme("moon")
	end,
}
