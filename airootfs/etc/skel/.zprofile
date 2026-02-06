# ~/.zprofile
#

# Auto-start Hyprland on tty1 if no display is active
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec Hyprland
fi
