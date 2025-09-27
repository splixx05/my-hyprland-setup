-- ########################################################################

require("git"):setup()

-- ########################################################################

require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

-- ########################################################################

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "|", close = "|" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = "#1793D1",
		bg_mode = {
			-- normal = "#101322",
			select = "#CBA6F7",
			un_select = "#FF6B6B",
		},
	},
	style_b = { fg = "#1793D1", bg = "#101322" },
	style_c = { fg = "#1793D1", bg = "#101322" },

	permissions_t_fg = "#1793D1",
	permissions_r_fg = "#8CCF7E",
	permissions_w_fg = "#FFD580",
	permissions_x_fg = "#FF6B6B",
	permissions_s_fg = "#1793D1",

	selected = { icon = "󰻭", fg = "#FFD580" },
	copied = { icon = "", fg = "#8CCF7E" },
	cut = { icon = "", fg = "#FF6B6B" },
	total = { icon = "󰮍", fg = "#FFD580" },
	succ = { icon = "", fg = "#8CCF7E" },
	fail = { icon = "", fg = "#FF6B6B" },
	found = { icon = "󰮕", fg = "#065287" },
	processed = { icon = "󰐍", fg = "#8CCF7E" },

	show_background = false,

	header_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "hovered_path" },
			},
			section_b = {
				-- { type = "string", custom = false, name = "hovered_path" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "symlink" },
			},
		},
		right = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "githead" },
			},
			section_c = {},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})

-- -- ########################################################################

local hypr = {
	prefix_color = "#7898C7",
	branch_color = "#00B7EB",
	commit_color = "#8CCF7E",
	stashes_color = "#8CCF7E",
	state_color = "#FF6B6B",
	staged_color = "#FFD580",
	unstaged_color = "#FF6B6B",
	untracked_color = "#1793D1",
}
require("yatline-githead"):setup({
	theme = hypr,
})

-- -- ########################################################################
--
require("yatline-tab-path"):setup({
	path_fg = "#101322",
	filter_fg = "#FFD580",
	search_label = " search",
	filter_label = " filter",
	no_filter_label = "",
	flatten_label = " flatten",
	separator = "",
})

-- -- ########################################################################

require("yatline-symlink"):setup({
	symlink_color = "#CBA6F7",
})

-- -- ########################################################################

require("yamb"):setup({
	jump_notify = true,
})

-- -- ########################################################################

require("restore"):setup({})

-- -- ########################################################################

require("relative-motions"):setup({
	show_numbers = "relative",
	show_motion = true,
	enter_mode = "first",
})

-- -- ########################################################################

require("copy-file-contents"):setup({
	append_char = "\n",
	notification = true,
})

-- -- ########################################################################

-- -- ########################################################################
