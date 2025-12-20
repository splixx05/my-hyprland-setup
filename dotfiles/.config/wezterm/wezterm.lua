local wezterm = require("wezterm")
local config = {}

-- -- // Common settings // --
config.enable_wayland = false
config.default_prog = { "/usr/bin/zsh" }

-- Load essential modules
config.keys = require("ess.keymaps")
config.colors = require("ess.colors")

-- Merge gui modules
local function merge(tbl)
	for k, v in pairs(tbl) do
		config[k] = v
	end
end

merge(require("app.gui"))
merge(require("app.win"))
merge(require("app.bg"))

return config
