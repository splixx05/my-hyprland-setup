function :lidoff ()
{
	mv "$HOME/.config/hypr/conf.d/scripts/screen-switch.conf" "$HOME/.config/hypr/conf.d/scripts/screen-switch.conf.bak"
	echo "monitor = eDP-1, disable" >"$HOME/.config/hypr/conf.d/scripts/screen-switch.conf"
	echo "monitor = DP-1, preferred, auto, 1" >>"$HOME/.config/hypr/conf.d/scripts/screen-switch.conf"
	chmod +x "$HOME/.config/hypr/conf.d/scripts/screen-switch.conf"
	hyprctl reload
}
