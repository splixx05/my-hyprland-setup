return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
	config = function()
		require("barbar").setup({
			animation = true,
			tabpages = true,
			highlight_visible = false,
			icons = {
				buffer_index = true,
				buffer_number = false,
				button = "",
				diagnostics = {
					[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
					[vim.diagnostic.severity.WARN] = { enabled = false },
					[vim.diagnostic.severity.INFO] = { enabled = false },
					[vim.diagnostic.severity.HINT] = { enabled = true },
					gitsigns = {
						added = { enabled = true, icon = "+" },
						changed = { enabled = true, icon = "~" },
						deleted = { enabled = true, icon = "-" },
					},
					filetype = {
						custom_colors = false,
						enabled = true,
					},
					sidebar_filetypes = {
						NvimTree = true,
					},
					separator = { left = "▎", right = "▎" },
					separator_at_end = true,
					modified = { button = "●" },
					pinned = { button = "", filename = true },
				},
			},
		})
	end,
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
