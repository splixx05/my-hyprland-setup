return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			background = "transparent",
			indent_blankline = {
				enabled = true,
				scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
				colored_indent_levels = false,
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				telescope = true,
				fzf = true,
				notify = false,
				-- alfa = true,
				dashboard = true,
				mini = {
					enabled = true,
					indentscope_color = "lavender",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
