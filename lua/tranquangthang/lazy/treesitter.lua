return {
	"nvim-treesitter/nvim-treesitter",

	dependencies = "nvim-treesitter/nvim-treesitter-textobjects",

	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,

	opts = {
		ensure_installed = {
			"javascript",
			"typescript",
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
		},
		sync_install = false,
		auto_install = true,
		indent = { enable = true },
		highlight = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-Space>",
				node_incremental = "<C-Space>",
				node_decremental = "<C-BS>",
				scope_incremental = "<C-s>",
			},
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
				},
			},
		},
	},

	config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
	end,
}
