function :vswitch ()
{
	echo "monitor = eDP-1, preferred, 0x0, 1" >~/.config/hypr/conf.d/scripts/screen-switch.conf
	echo "monitor = DP-1, preferred, -250x-1440, 1" >>~/.config/hypr/conf.d/scripts/screen-switch.conf
}
