local wezterm = require("wezterm")
local act = wezterm.action

return {
	{ key = "f", mods = "SHIFT|ALT", action = act.ToggleFullScreen },
	{ key = "q", mods = "CTRL|ALT", action = act.QuitApplication },
	{ key = "l", mods = "CTRL|ALT", action = act.ActivateLastTab },

	-- Pane switch (vim-style)
	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },

	-- Resize pane (vim-style)
	{ key = "h", mods = "ALT|SHIFT", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "l", mods = "ALT|SHIFT", action = act.AdjustPaneSize({ "Right", 5 }) },
	{ key = "k", mods = "ALT|SHIFT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "j", mods = "ALT|SHIFT", action = act.AdjustPaneSize({ "Down", 5 }) },

	-- Pane split
	{ key = "h", mods = "CTRL|ALT", action = act.SplitHorizontal },
	{ key = "v", mods = "CTRL|ALT", action = act.SplitVertical },

	-- New tab / Close tab
	{ key = "t", mods = "ALT|SHIFT", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "w", mods = "ALT|SHIFT", action = act.CloseCurrentTab({ confirm = true }) },

	-- Change tab & tab position
	{ key = "b", mods = "ALT|SHIFT", action = act.ActivateTabRelative(-1) },
	{ key = "n", mods = "ALT|SHIFT", action = act.ActivateTabRelative(1) },
	{ key = "b", mods = "CTRL|ALT", action = act.MoveTabRelative(-1) },
	{ key = "n", mods = "CTRL|ALT", action = act.MoveTabRelative(1) },

	-- ✏️ Rename tab (PROMPT!)
	{
		key = "r",
		mods = "SHIFT|ALT",
		action = act.PromptInputLine({
			description = "Rename tab",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

-- -- Optional: Nummerntabs (ALT+1..9)
--   { key = "1", mods = "ALT", action = act.ActivateTab(0) },
--   { key = "2", mods = "ALT", action = act.ActivateTab(1) },
--   { key = "3", mods = "ALT", action = act.ActivateTab(2) },
--   { key = "4", mods = "ALT", action = act.ActivateTab(3) },
--   { key = "5", mods = "ALT", action = act.ActivateTab(4) },
--   { key = "6", mods = "ALT", action = act.ActivateTab(5) },
--   { key = "7", mods = "ALT", action = act.ActivateTab(6) },
--   { key = "8", mods = "ALT", action = act.ActivateTab(7) },
--   { key = "9", mods = "ALT", action = act.ActivateTab(8) },
