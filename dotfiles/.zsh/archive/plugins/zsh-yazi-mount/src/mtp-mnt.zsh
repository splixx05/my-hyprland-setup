#!/bin/bash

MOUNTPOINT="$HOME/ex/phone"

# Check dependencies
for cmd in simple-mtpfs fusermount gum; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "❌ '$cmd' is required but not installed. Exiting."
    exit 1
  fi
done

# Create mountpoint if it doesn't exist
if [ ! -d "$MOUNTPOINT" ]; then
  mkdir -p "$MOUNTPOINT"
  # If user rights are needed, uncomment the following 2 lines:
  chown "$USER":"$(id -gn)" "$MOUNTPOINT"
  chmod 755 "$MOUNTPOINT"
fi

simple-mtpfs --device 1 "$MOUNTPOINT" 2>/dev/null && fusermount -u "$MOUNTPOINT"

# Prompt user to unlock phone and confirm MTP mode
gum style --border normal --margin "1" --padding "1 2" --border-foreground 212 \
"📱 Please unlock your phone and enable 'File Transfer (MTP)' mode via USB.

Then press [Enter] to continue."
read -r

# List MTP devices
DEVICE_LIST=$(simple-mtpfs -l)
if [[ -z "$DEVICE_LIST" ]]; then
  gum style --border normal --margin "1" --padding "1 2" --border-foreground 9 \
  "❌ No MTP devices found.

Make sure:
- Your phone is connected
- It is unlocked
- 'File Transfer' mode is selected"
  exit 1
fi

# Parse and show devices in gum menu
mapfile -t devices < <(echo "$DEVICE_LIST" | awk -F: '{print $1 " - " $2}')
selection=$(printf "%s\n" "${devices[@]}" | gum choose --header "📱 Select a device to mount")

if [[ -z "$selection" ]]; then
  echo "❌ No device selected. Exiting."
  exit 1
fi

device_index=$(echo "$selection" | awk '{print $1}')

# Mount selected device
gum spin --spinner line --title "🔗 Mounting device $selection..." -- \
simple-mtpfs --device "$device_index" "$MOUNTPOINT"

if [[ $? -ne 0 ]]; then
  gum style --border normal --margin "1" --padding "1 2" --border-foreground 9 \
  "❌ Mount failed for device $selection

Check:
- USB cable/port
- Permissions
- Is the phone still unlocked?"
  exit 1
fi

# Confirmation before Yazi
gum confirm "✅ Device mounted at $MOUNTPOINT. Open in Yazi?" && yazi "$MOUNTPOINT"

# Ask to unmount
if gum confirm "🔌 Unmount device now?"; then
  if fusermount -u "$MOUNTPOINT"; then
    gum style --foreground 10 "✅ Unmounted successfully."
  else
    gum style --foreground 9 "⚠️ Unmount failed. Try 'fusermount -u \"$MOUNTPOINT\"' manually."
  fi
else
  echo "⚠️ Remember to unmount later: fusermount -u \"$MOUNTPOINT\""
fi
