#!/usr/bin/env sh
# Recover GSETTINGS_SCHEMA_DIR when run outside a login shell (Hyprland, systemd
# units, keybinds); otherwise gsettings reports "No schemas installed".
if [ -z "${GSETTINGS_SCHEMA_DIR:-}" ] && [ -r /etc/set-environment ]; then
    GSETTINGS_SCHEMA_DIR=$(. /etc/set-environment; printf '%s' "$GSETTINGS_SCHEMA_DIR")
    export GSETTINGS_SCHEMA_DIR
fi

gsettings set org.gnome.desktop.interface gtk-theme    "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
kvantummanager --set KvLibadwaitaDark
