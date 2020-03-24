# :::::::::::::::[]::::::::::::: #
# :::: /_> |U_U| || /_> /_> :::: #
# :::: <=/ |T-T| || <=/ <=/ :::: #
# ::::::::SHISS DOTFILES:::::::: #
# https://github.com/gzygmanski: #
# gzygmanski@hotmail.com:::::::: #

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# custom options and scripts
xrandr --output HDMI-0 --auto --right-of DVI-D-0
picom &
~/.fehbg &
dunst &
pgrep status || ~/scripts/./status &
pgrep mpd-notify || ~/scripts/./mpd-notify &
pgrep rest-break || ~/scripts/./rest-break &

exec dwm
