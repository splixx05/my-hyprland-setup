wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab.tab_title
	if title == "" then
		title = tab.active_pane.title
	end

	return {
		{ Text = "  " .. title .. "  " },
	}
end)
