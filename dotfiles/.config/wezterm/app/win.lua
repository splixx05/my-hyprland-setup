local wezterm = require("wezterm")

return {

	font = wezterm.font("MesloLGS NF", { weight = "Regular" }),
	font_size = 15,

	window_frame = {
		font = wezterm.font("MesloLGS NF"),
		font_size = 10,
	},

	window_padding = {
		left = 7,
		right = 3,
		top = 15,
		bottom = 0,
	},
}
