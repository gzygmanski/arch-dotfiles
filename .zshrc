# :::::::::::::::[]::::::::::::: #
# :::: /_> |U_U| || /_> /_> :::: #
# :::: <=/ |T-T| || <=/ <=/ :::: #
# ::::::::SHISS DOTFILES:::::::: #
# https://github.com/gzygmanski: #
# gzygmanski@hotmail.com:::::::: #

export PATH=$HOME/bin:/usr/local/bin:$HOME/scripts:$PATH
export ZSH="/home/shiss/.oh-my-zsh"
ZSH_THEME="shiss"

plugins=(
  virtualenv
  zsh-autosuggestions
  # vi-mode
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

bindkey '^ ' autosuggest-accept

alias f="lf"
alias fh="lf ~/"
alias fm="lf /mnt/nfs/priv-media"

alias trr="tremc"
alias vi="vim"

# config
alias dwmc="cd ~/suckless/dwm && vim config.h"
alias stc="cd ~/suckless/st && vim config.h"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias initrc="vim ~/.xinitrc"
alias conf="cd ~/.config && vim"


# ls
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias clr="clear"

# git
alias gstat="git status"
alias gadd="git add ."

export LF_ICONS="\
di= :\
fi= :\
ln= :\
or= :\
ex= :\
*.c= :\
*.cc= :\
*.clj= :\
*.coffee= :\
*.cpp= :\
*.css= :\
*.d= :\
*.dart= :\
*.erl= :\
*.exs= :\
*.fs= :\
*.go= :\
*.h= :\
*.hh= :\
*.hpp= :\
*.hs= :\
*.html= :\
*.java= :\
*.jl= :\
*.js= :\
*.json= :\
*.lua= :\
*.md= :\
*.php= :\
*.pl= :\
*.pro= :\
*.py= :\
*.rb= :\
*.rs= :\
*.scala= :\
*.ts= :\
*.vim= :\
*.cmd= :\
*.ps1= :\
*.sh= :\
*.bash= :\
*.zsh= :\
*.fish= :\
*.tar= :\
*.tgz= :\
*.arc= :\
*.arj= :\
*.taz= :\
*.lha= :\
*.lz4= :\
*.lzh= :\
*.lzma= :\
*.tlz= :\
*.txz= :\
*.tzo= :\
*.t7z= :\
*.zip= :\
*.z= :\
*.dz= :\
*.gz= :\
*.lrz= :\
*.lz= :\
*.lzo= :\
*.xz= :\
*.zst= :\
*.tzst= :\
*.bz2= :\
*.bz= :\
*.tbz= :\
*.tbz2= :\
*.tz= :\
*.deb= :\
*.rpm= :\
*.jar= :\
*.war= :\
*.ear= :\
*.sar= :\
*.rar= :\
*.alz= :\
*.ace= :\
*.zoo= :\
*.cpio= :\
*.7z= :\
*.rz= :\
*.cab= :\
*.wim= :\
*.swm= :\
*.dwm= :\
*.esd= :\
*.jpg= :\
*.jpeg= :\
*.mjpg= :\
*.mjpeg= :\
*.gif= :\
*.bmp= :\
*.pbm= :\
*.pgm= :\
*.ppm= :\
*.tga= :\
*.xbm= :\
*.xpm= :\
*.tif= :\
*.tiff= :\
*.png= :\
*.svg= :\
*.svgz= :\
*.mng= :\
*.pcx= :\
*.mov= :\
*.mpg= :\
*.mpeg= :\
*.m2v= :\
*.mkv= :\
*.webm= :\
*.ogm= :\
*.mp4= :\
*.m4v= :\
*.mp4v= :\
*.vob= :\
*.qt= :\
*.nuv= :\
*.wmv= :\
*.asf= :\
*.rm= :\
*.rmvb= :\
*.flc= :\
*.avi= :\
*.fli= :\
*.flv= :\
*.gl= :\
*.dl= :\
*.xcf= :\
*.xwd= :\
*.yuv= :\
*.cgm= :\
*.emf= :\
*.ogv= :\
*.ogx= :\
*.aac= :\
*.au= :\
*.flac= :\
*.m4a= :\
*.mid= :\
*.midi= :\
*.mka= :\
*.mp3= :\
*.mpc= :\
*.ogg= :\
*.ra= :\
*.wav= :\
*.oga= :\
*.opus= :\
*.spx= :\
*.xspf= :\
*.pdf= :\
*.nix= :\
"
shifetch
