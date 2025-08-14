notes='/home/ricky/Dev/notes/notes.txt'

function :add-notes() {
	echo "Enter a new note"
	read -r newnote
	echo "$newnote" >>"$notes"
	echo "==========================================" >>"$notes"
}

function :ls-notes() {
	gum style \
		--border rounded \
		--padding "1 1" \
		--margin "0" \
		--border-foreground "#1793D1" \
		"$(cat "$notes")"

	created=$(stat -c "%w" "$notes")
	modified=$(stat -c "%y" "$notes")

	[ "$created" = "-" ] && created="N/A"
	[ "$created" != "N/A" ] && created=$(date -d "$created" "+%Y-%m-%d %H:%M")
	modified=$(date -d "$modified" "+%Y-%m-%d %H:%M")

	gum style \
		--border rounded \
		--padding "1 1" \
		--margin "0" \
		--border-foreground "#1793D1" \
		"$(printf "📍 Location: %s\n🆕 Created at: %s\n✏️ Last change: %s" "$notes" "$created" "$modified")"
}

function :del-notes() {
	GUM_CONFIRM_PROMPT_FOREGROUND="#7898C7"
	GUM_CONFIRM_SELECTED_FOREGROUND="#1793D1"
	GUM_CONFIRM_UNSELECTED_FOREGROUND="#1C2533"
	if gum confirm "Delete the whole content?"; then
		: >"$notes"
		echo "Content has been deleted"
	else
		echo "Purge has been cancelled"
	fi
}
