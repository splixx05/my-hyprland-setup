-- Pull in the API
local wezterm = require("wezterm")

-- Hold the configurations
local config = wezterm.config_builder()

-- For Wayland
config.enable_wayland = false

-- set default shell
config.default_prog = { "/usr/bin/zsh" }

-- -- Background (img)
-- config.window_background_image = "/home/ricky/myStuff/Pictures/Wallpapers/cool/wvant.jpg"
-- config.window_background_image_hsb = {
-- 	brightness = 0.2,
-- 	hue = 0.9,
-- 	saturation = 0.9,
-- }

-- Window
config.window_background_opacity = 0.7
config.inactive_pane_hsb = {
	saturation = 1,
	brightness = 0.3,
}

-- Fonts
config.font = wezterm.font("MesloLGS NF", { weight = "Regular" })
config.font_size = 15

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true
config.show_tab_index_in_tab_bar = true
config.show_tabs_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true
config.tab_and_split_indices_are_zero_based = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- Colors & Colorscheme
-- config.color_scheme = "ElectricMidnight"
config.colors = {
	tab_bar = {
		background = "NONE",
		active_tab = {
			bg_color = "#00B7EB",
			fg_color = "#07060E",
			intensity = "Normal",
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

-- Keybinding config
config.keys = {
	{
		key = "f",
		mods = "CTRL|ALT",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "v",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitVertical,
	},
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "q",
		mods = "CTRL|ALT",
		action = wezterm.action.QuitApplication,
	},
	{
		key = "l",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivateLastTab,
	},
}

return config
