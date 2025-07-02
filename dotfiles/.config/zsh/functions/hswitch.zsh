function :hswitch ()
{
	echo "monitor = eDP-1, preferred, 2560x700, 1" >~/.config/hypr/conf.d/scripts/screen-switch.conf
	echo "monitor = DP-1, preferred, auto, 1" >>~/.config/hypr/conf.d/scripts/screen-switch.conf
}
