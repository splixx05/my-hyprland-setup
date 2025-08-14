function :lidon() {
	mv "$HOME/.config/hypr/conf.d/scripts/screen-switch.conf.bak" "$HOME/.config/hypr/conf.d/scripts/screen-switch.conf"
	hyprctl reload
}
