#          _                        __ _ _      
#  _______| |__    _ __  _ __ ___  / _(_) | ___ 
# |_  / __| '_ \  | '_ \| '__/ _ \| |_| | |/ _ \
#  / /\__ \ | | | | |_) | | | (_) |  _| | |  __/
# /___|___/_| |_| | .__/|_|  \___/|_| |_|_|\___|
#                 |_|                           
#

# -------  QT config for QT framework (QT6) ------ #
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_WAYLAND_DISABLE_WINDOWDECORATIONS=1
export QT_STYLE_OVERRIDE=kvantum


# -----------  XDG config  ----------------------- #
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=hyprland
# export XDG_CURRENT_DESKTOP=hyprland


# --------  dir config for hypr apps ------------- #
export HYPRSHOT_DIR="$HOME/myStuff/Pictures/Screenshots"

# --------  x11 / Wayland config  ---------------- #
export MOZ_ENABLE_WAYLAND=1
