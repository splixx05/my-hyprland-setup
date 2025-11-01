:update() {
  FULL=false
  GIT=false
  PKG=false

  while [[ $# -gt 0 ]]; do
    case "$1" in
      -f|--full) FULL=true ;;
      -g|--git) GIT=true ;;
      -p|--pkg) PKG=true ;;
      -h|--help)
        echo "Usage: :update [option]"
        echo " " 
        echo "Available options are:" 
        echo "-f | --full        --> This will start a full update (pkgs & git plugins in zsh)" 
        echo "-g | --git         --> This will start a update only for zsh plugins (git plugins in zsh)"
        echo "-p | --pkg         --> This will start an update only for pkgs (acording your pkgs manager)" 
        return 0 
        ;;
      *) echo "Unknown option: $1" && return 1 ;;
    esac
    shift
  done

  # Fallback
  if ! $FULL && ! $GIT && ! $PKG; then
    FULL=true
  fi

  local SCRIPT_DIR="$ZSH/scripts"

  if $FULL; then
    "$SCRIPT_DIR/update_full.sh"
  elif $GIT; then
    "$SCRIPT_DIR/update_git.sh"
  elif $PKG; then
    "$SCRIPT_DIR/update_pkg.sh"
  fi
}
