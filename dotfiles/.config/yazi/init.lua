-- ################## Colors ######################################################

local c = {
	bg = "#07060E",
	fg = "#A0CFFF",
	black = "#283457",
	grey = "#7898C7",
	green = "#38ff9c",
	yellow = "#FFD580",
	orange = "#FFAA66",
	red = "#FF6B6B",
	blue = "#5CAEFF",
	cyan = "#00B7EB",
	magenta = "#E178FF",
	violet = "#947CFF",
	white = "#A0CFFF",
}

-- ################## GIT #####################################################

require("git"):setup()

-- ################## Border #####################################################

require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

-- ################## Yatline ####################################################

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "|", close = "|" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = c.cyan,
		bg_mode = {
			-- normal = c.bg,
			select = c.magenta,
			un_select = c.red,
		},
	},
	style_b = { fg = c.cyan },
	style_c = { fg = c.cyan },

	permissions_t_fg = c.blue,
	permissions_r_fg = c.green,
	permissions_w_fg = c.yellow,
	permissions_x_fg = c.red,
	permissions_s_fg = c.cyan,

	selected = { icon = "󰻭", fg = c.yellow },
	copied = { icon = "", fg = c.green },
	cut = { icon = "", fg = c.red },
	total = { icon = "󰮍", fg = c.yellow },
	succ = { icon = "", fg = c.green },
	fail = { icon = "", fg = c.red },
	found = { icon = "󰮕", fg = c.blue },
	processed = { icon = "󰐍", fg = c.green },

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
			section_b = {},
			section_c = {
				{ type = "coloreds", custom = false, name = "githead" },
			},
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

-- -- ################### GIT-Head #####################################################

local colorscheme = {
	prefix_color = c.grey,
	branch_color = c.cyan,
	commit_color = c.green,
	stashes_color = c.green,
	state_color = c.red,
	staged_color = c.orange,
	unstaged_color = c.red,
	untracked_color = "c.cyan",
}
require("yatline-githead"):setup({
	theme = colorscheme,
})

-- -- #################### Tab-Path ####################################################
--
require("yatline-tab-path"):setup({
	path_fg = c.bg,
	filter_fg = c.orange,
	search_label = " search",
	filter_label = " filter",
	no_filter_label = "",
	flatten_label = " flatten",
	separator = "",
})

-- -- ##################### Symlink ###################################################

require("yatline-symlink"):setup({
	symlink_color = c.magenta,
})

-- -- ##################### Copy File Content ###################################################

require("copy-file-contents"):setup({
	append_char = "\n",
	notification = true,
})

-- -- ##################### Bookmarks ###################################################

require("bookmarks"):setup({
	last_directory = { enable = true, persist = true, mode = "mark" },
	persist = "all",
	desc_format = "full",
	file_pick_mode = "hover",
	custom_desc_input = true,
	show_keys = true,
	notify = {
		enable = false,
		timeout = 1,
		message = {
			new = "New bookmark '<key>' -> '<folder>'",
			delete = "Deleted bookmark in '<key>'",
			delete_all = "Deleted all bookmarks",
		},
	},
})

-- Doc --> https://github.com/dedukun/bookmarks.yazi

-- -- ########################################################################

-- -- ########################################################################
