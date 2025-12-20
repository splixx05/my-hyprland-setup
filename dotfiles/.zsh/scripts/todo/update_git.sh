echo " "
echo "🔎 Searching for all git repositories in your system..."
echo " "

# Define search roots – safe defaults
search_roots=(
	"$HOME"
)

blacklist=(
	"$HOME/.local/share"
	"$HOME/.cache"
	"$HOME/.config/yazi/plugins"
)

git_repos=()

# Find all .git folders
for root in "${search_roots[@]}"; do
	while IFS= read -r repo; do
		git_repos+=("$(dirname "$repo")")
	done < <(find "$root" -type d -name ".git" 2>/dev/null)
done

echo "📦 Found ${#git_repos[@]} git repositories."
echo " "

# Update each repository
should_skip() {
	for b in "${blacklist[@]}"; do
		[[ "$1" == "$b"* ]] && return 0
	done
	return 1
}

for repo in "${git_repos[@]}"; do
	if should_skip "$repo"; then
		echo "⏭️  Skipping $(basename "$repo") (blacklisted)"
		continue
	fi
	echo "→ Updating $(basename "$repo")"
	git -C "$repo" pull --ff-only
done

echo " "
echo "✅ All git repos updated!"
