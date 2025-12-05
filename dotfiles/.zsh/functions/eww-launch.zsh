function :eww ()
{

## Files and cmd
FILE="$HOME/.cache/eww-launch"
CFG="$HOME/.config/eww/"
EWW=$(which eww)

## Run eww daemon if not running already
if [[ ! $(pidof eww) ]]; then
	${EWW} daemon
	sleep 3
fi

## Open widgets
run_eww() {
	${EWW} --config "$CFG" open-many \
  sleep \
  logout \
  reboot \
  poweroff \
  clock \
  system \
  folders
}

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
	touch "$FILE"
	run_eww
else
	${EWW} --config "$CFG" close \
  sleep \
  logout \
  reboot \
  poweroff \
  clock \
  system \
  folders
	rm "$FILE"
fi
}
