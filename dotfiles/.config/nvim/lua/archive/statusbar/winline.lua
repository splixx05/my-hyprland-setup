return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- vim.cmd("colorscheme")
		local lualine = require("lualine")
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "ayu_mirage",
				component_separators = { left = " ", right = "/" },
				section_separators = { left = "", right = "" },
				-- disabled_filetypes = {
				-- 	statusline = {},
				-- 	winbar = {},
				-- 	ignore_focus = {},
				-- },
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_winbar = {},
			extensions = { "lazy", "mason" },
		})
	end,
}

-- sections = {
--   lualine_a = {
--     {
--       'lsp_status',
--       icon = '', -- f013
--       symbols = {
--         -- Standard unicode symbols to cycle through for LSP progress:
--         spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
--         -- Standard unicode symbol for when LSP is done:
--         done = '✓',
--         -- Delimiter inserted between LSP names:
--         separator = ' ',
--       },
--       -- List of LSP names to ignore (e.g., `null-ls`):
--       ignore_lsp = {},
--     }
--   }
-- }
