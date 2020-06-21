#!/bin/sh
[ "$(id -u)" != "0" ] && printf "%s\n" "You need root permissions to run this script" && exit 126
cp -f ./grub /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
