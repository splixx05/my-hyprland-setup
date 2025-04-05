return {
	"folke/snacks.nvim",
	opts = {
		dashboard = {
			sections = {
				{ section = "header" },
				{
					pane = 2,
					section = "terminal",
					cmd = "",
					height = 7,
					padding = 1,
				},
				{
					section = "keys",
					gap = 1,
					padding = 1,
				},
				{
					pane = 2,
					icon = " ",
					title = "Recent Files",
					section = "recent_files",
					indent = 2,
					padding = 1,
				},
				{
					pane = 2,
					icon = " ",
					title = "Current DIR ",
					file = vim.fn.fnamemodify(".", ":~"),
					padding = 1,
				},
				{
					pane = 2,
					section = "recent_files",
					cwd = true,
					limit = 5,
					padding = 1,
				},
			},
		},
	},
}
