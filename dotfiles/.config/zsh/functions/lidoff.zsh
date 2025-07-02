function :lidoff ()
{
	echo "monitor = eDP-1, disable" >~/.config/hypr/conf.d/scripts/screen-switch.conf
	echo "monitor = DP-1, preferred, auto, 1" >>~/.config/hypr/conf.d/scripts/screen-switch.conf
}
