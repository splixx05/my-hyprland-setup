#!/bin/sh

# ── 🎯 Choise ─────────────────────────────────────────

choice=$(
  gum choose --header "🗂️ Which repo do you want to clone?" \
    "1) Syntax-Highlighting" \
    "2) Autosuggestions" \
    "3) Yazi-Mount" \
    "4) Cloud-Drives" \
    "5) Drive-Formatter" \
    "6) All of them" \
    "❌ Quit"
)

if [ "$choice" = "❌ Quit" ]; then
  echo "👋 Exited by user"
  exit 0
fi

# ── 🧠 Proceed the choise ------───────────────────────
# (case-Block)

case "$choice" in
"1) Syntax-Highlighting") flag='zsh-users/zsh-syntax-highlighting.git' ;;
"2) Autosuggestions") flag='zsh-users/zsh-autosuggestions.git' ;;
"3) Yazi-Mount") flag='splixx05/zsh-yazi-mount.git' ;;
"4) Cloud-Drives") flag='splixx05/zsh-cloud-drives.git' ;;
"5) Drive-Formatter") flag='splixx05/zsh-drive-formatter.git' ;;
"6) All of them")
  repos=(
    "zsh-users/zsh-syntax-highlighting.git"
    "zsh-users/zsh-autosuggestions.git"
    "splixx05/zsh-yazi-mount.git"
    "splixx05/zsh-cloud-drives.git" 
    "splixx05/zsh-drive-formatter.git"
    )
  ;;
*)
  echo "❗ Invalid input!"
  exit 1
  ;;
esac

# ── ❓ Confirmation ───────────────────────────────────
# (gum confirm)

if [ "$choice" = "6) All of them" ]; then
  gum confirm "❓ Ready to clone all repositories? Proceed?" || {
    echo "👋 Exited by user"
    exit 0
  }
else
  gum confirm "❓ Ready to clone '$flag'? Proceed?" || {
    echo "👋 Exited by user"
    exit 0
  }
fi

# ── 🚀 Clone  ─────────────────────────────────────────
# (git clone)

if [ "$choice" = "6) All of them" ]; then
  for repo in "${repos[@]}"; do
    gum spin --title "🚀 Cloning $repo" -- git clone "https://github.com/$repo"
  done
else
  gum spin --title "🚀 Cloning $flag" -- git clone "https://github.com/$flag"
fi

# ── ✅ Finish ---──────────────────────────────────────
# (gum style)

gum style --foreground 212 --border normal --padding "1 2" --margin "1 0" \
  -- "✅ Process complete"
