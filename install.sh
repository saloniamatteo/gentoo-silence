#!/bin/sh
# This POSIX-sh script installs Gentoo silence.

# Check if we have to use doas or sudo
[ $(which doas) ] && rootcmd="doas" || rootcmd="sudo"

# Delete old theme directory
echo "Deleting old directory (/boot/grub/themes/gentoo-silence)"
$rootcmd rm -rf /boot/grub/themes/gentoo-silence

# Copy theme
echo "Copying theme (/boot/grub/themes/gentoo-silence)"
$rootcmd cp -TR theme /boot/grub/themes/gentoo-silence
$rootcmd grub-mkconfig -o /boot/grub/grub.cfg

# Check if current Grub theme is not gentoo-silence
echo "Checking if current theme is gentoo-silence"
if [[ $(grep -E '^GRUB_THEME=' /etc/default/grub | sed 's/GRUB_THEME=//') =~ "gentoo-silence" ]]; then
	echo "Current theme is gentoo-silence :)"
else
	echo "Current theme is NOT gentoo-silence! :("
	echo "Remember to modify /etc/default/grub, and to set GRUB_THEME to"
	echo 'GRUB_THEME="/boot/grub/themes/gentoo-silence/theme.txt"'
fi
