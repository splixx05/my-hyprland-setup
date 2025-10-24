#          _       _              _
#  _______| |__   | |_ ___   ___ | |___
# |_  / __| '_ \  | __/ _ \ / _ \| / __|
#  / /\__ \ | | | | || (_) | (_) | \__ \
# /___|___/_| |_|  \__\___/ \___/|_|___/
#
# ---------------------------------------------

function zsh-update() {
	echo "🔄 Updating local Zsh plugins..."
	for dir in ~/.zsh/plugins/local/*/.git; do
		plugin_dir=$(dirname "$dir")
		echo "→ $(basename "$plugin_dir")"
		git -C "$plugin_dir" pull --ff-only
	done

	echo "⚙️ Updating global (brew/yay) packages..."
	if command -v brew &>/dev/null; then
		brew upgrade
	elif command -v yay &>/dev/null; then
		yay -Syu
	fi

	echo "✅ All packages updated!"
}
