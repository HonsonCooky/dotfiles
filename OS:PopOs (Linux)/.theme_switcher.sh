#!/bin/bash

# Get the current GTK theme
current_theme=$(gsettings get org.gnome.desktop.interface gtk-theme)

# Define your light and dark themes here
light_theme="Catppuccin-Latte"
dark_theme="Catppuccin-Mocha-dark"

# Check the current theme and switch
if [ $1 == "dark" ]; then
	gsettings set org.gnome.shell.ubuntu color-scheme prefer-dark
	gsettings set org.gnome.desktop.interface color-scheme prefer-dark
	gsettings set org.gnome.desktop.interface gtk-theme "$dark_theme"
	gsettings set org.gnome.shell.extensions.user-theme name "$dark_theme"
	gsettings set org.gnome.Terminal.ProfilesList default "95894cfd-82f7-430d-af6e-84d168bc34f5"
else
	gsettings set org.gnome.shell.ubuntu color-scheme prefer-light
	gsettings set org.gnome.desktop.interface color-scheme prefer-light
	gsettings set org.gnome.desktop.interface gtk-theme "$light_theme"
	gsettings set org.gnome.shell.extensions.user-theme name "$light_theme"
	gsettings set org.gnome.Terminal.ProfilesList default "de8a9081-8352-4ce4-9519-5de655ad9361"
fi
