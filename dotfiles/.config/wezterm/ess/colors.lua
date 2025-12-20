--  ___ _   ___ ________ ___ _  ___  __ __ _ __  __  _ _  __ _  _ _____
-- | __| | | __/ _/_   _| _ \ |/ _/ |  V  | | _\|  \| | |/ _] || |_   _|
-- | _|| |_| _| \__ | | | v / | \__ | \_/ | | v | | ' | | [/\ >< | | |
-- |___|___|___\__/ |_| |_|_\_|\__/ |_| |_|_|__/|_|\__|_|\__/_||_| |_|

return {
	tab_bar = {
		-- -- // Tab colors // --
		background = "NONE",
		active_tab = {
			bg_color = "#00B7EB",
			fg_color = "#07060E",
			intensity = "Bold",
			underline = "None",
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#07060E",
			fg_color = "#00B7EB",
		},
		inactive_tab_hover = {
			bg_color = "#283457",
			fg_color = "#A0CFFF",
		},
		new_tab = {
			bg_color = "#07060E",
			fg_color = "#7898C7",
		},
		new_tab_hover = {
			bg_color = "#283457",
			fg_color = "#A0CFFF",
		},
	},

	-- -- // Terminal colors // --
	foreground = "#7898C7",
	background = "#07060E",
	cursor_bg = "#00B7EB",
	cursor_fg = "#07060E",
	cursor_border = "#07060E",
	selection_fg = "#00B7EB",
	selection_bg = "#283457",
	scrollbar_thumb = "#283457",
	split = "#3A3E52",
	ansi = {
		"#1c1e28",
		"#FF6B6B",
		"#8CCF7E",
		"#FFD580",
		"#5CAEFF",
		"#947CFF",
		"#00B7EB",
		"#c0caf5",
	},
	brights = {
		"#3A3E52",
		"#FF8787",
		"#A7F3A1",
		"#FFEAA7",
		"#A0CFFF",
		"#E178FF",
		"#00E5FF",
		"#f0f4ff",
	},
}
