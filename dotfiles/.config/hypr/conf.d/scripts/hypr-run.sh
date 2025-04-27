#!/bin/sh

# --------------------------------------------------- #
# This is a wrapper script written for greetd (tuigreet)
# and should be copied to /usr/local/bin
#
# activate it as --cmd to in your
# ${XDG_CONFIG_HOME}/greetd/config.toml, for e.g.:
#
# [default_session]
# command = "tuigreet --cmd hypr-run
#
# to run Hyprland with zprofiles env variables
# --------------------------------------------------- #

# -------  QT config for QT framework (QT6)  -------- #
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_WAYLAND_DISABLE_WINDOWDECORATIONS=1
export QT_STYLE_OVERRIDE=kvantum

# --------  XDG config  ----------------------------- #
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=hyprland

# --------  dir config for hypr apps ---------------- #
export HYPRSHOT_DIR="$HOME/myStuff/Pictures/Screenshots"

# ----  set your conifgs/var's above this line  ----- #
exec hyprland "$@"
