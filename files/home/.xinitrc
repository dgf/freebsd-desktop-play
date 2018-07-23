#!/bin/sh

# merge resources
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# configure language
export LANG="en_US.UTF-8"

# toogle keyboard layouts
setxkbmap -option grp:alt_shift_toggle us,de,es

# start i3
exec /usr/local/bin/i3
