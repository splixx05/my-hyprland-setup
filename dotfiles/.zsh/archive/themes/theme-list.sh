#!/bin/sh

# ── ❓ Confirmation ───────────────────────────────────
# (gum confirm)

gum confirm "❓ This script will clone the repo Powerlevel10k. Do you want to proceed?" || {
  echo "👋 Exited by user"
  exit 0
}

# ── 🚀 Clone  ─────────────────────────────────────────
# (git clone)

gum spin --title "🚀 Cloning repo" -- git clone https://github.com/romkatv/powerlevel10k.git

# ── ✅ Finish ---──────────────────────────────────────
# (gum style)

gum style --foreground 212 --border normal --padding "1 2" --margin "1 0" \
  -- "✅ Process complete"
