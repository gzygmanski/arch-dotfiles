# :::::::::::::::[]::::::::::::: #
# :::: /_> |U_U| || /_> /_> :::: #
# :::: <=/ |T-T| || <=/ <=/ :::: #
# ::::::::SHISS DOTFILES:::::::: #
# https://github.com/gzygmanski: #
# gzygmanski@hotmail.com:::::::: #

export EDITOR=vim
export VISUAL=vim
export BROWSER=qutebrowser
export PATH=$HOME/bin:/usr/local/bin:$HOME/scripts:$PATH

case $(tty) in /dev/tty1)
	startx
esac
