# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

user=$(whoami)
hostname=$(hostname)

source /home/$user/.git-prompt.sh # used for the git-prompt
source /etc/profile.d/bash_completion.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return




# THE PROMPT
# below are all the components to the prompt.
# the prompt consists of:
#   is_root?     if the user is root
#   directory    the current directory
#   git_repo     the current git branch
#   ending       '->'

lastExitCode(){ # changes prompt colour from green to red depending on if the last command was successful or not
  local code=$?
  if [[ $code == 0 || $code == 130 ]]; # look at all exit codes(tabbing etc)
  then
    local colour='1;32;1m'
  elif [[ $code == 148 ]];
  then
    local colour='0;36;1m'
  else
    local colour='0;31;1m'
  fi
  echo "$colour"
}

# determines if the user is root. (root!)
if [[ $(id -u) -eq 0 ]];
then
  is_root='\[\033[31;1m\](root) '
else
  is_root=''
fi

# determines the hostname      
# this helps me keep track of which desktop im on
if [[ $hostname == "laptop" ]];
then
  device=" "
elif [[ $hostname == "desktop" ]];
then
  device=""
fi


directory='\[\033[0;1m\]\w' # the actual directory. normally; ~
git_parsed='\[\033[0;35;1m\]$(__git_ps1 "  [%s]")' # determines the git branch
ending='\[\033[0;36;1m\] $device\[\033[$(lastExitCode)\]->\[\033[0m\] ' # the ending; $

PS1=$is_root$directory$git_parsed$ending # the final prompt
PS2='\[\033[$(lastExitCode)\]   -->\[\033[0m\]' # the 2nd prompt. '   -->'





# some ls aliases
alias l='ls -CF'
alias ls="ls -F --color"
alias la='ls -A'
alias ll='ls -lF'
alias lla="ls -la"
alias lh="ls -d .?*"
alias llh="ls -ld .?*"
alias cd...="cd ..;cd .."

# general bash aliases
alias cat="cat -n"
alias slep='systemctl suspend'
alias okbye="gn"
alias kys="exit"
alias bashtop="bpytop"
alias reparse=". /home/$user/.bashrc"
alias reload=". /home/$user/.bashrc"
alias refresh="clear;cd"
alias :q="exit"
alias :Q="exit"

# dev tools
alias run="./executables/main"
alias iplist="nmap -sn 192.68.0.0/24" # make this a function
alias findpi="iplist | grep pi"
alias fix-audio="systemctl --user restart pipewire.service"
export EDITOR="/usr/bin/vim"
alias lc="line_count"
alias cc="char_count"
alias lampp-start="sudo /opt/lampp/lampp start"
alias lampp-restart="sudo /opt/lampp/lampp restart"
alias lampp-stop="sudo /opt/lampp/lampp stop"

# shell prompts
alias repl="echo 'Node Version: $(node --version)' ;node ~/.replrc" # starts node repl
export PYTHONSTARTUP="/home/$user/.pythonrc" # loads python rc
alias lua="lua -i .rc.lua"
export DENO_INSTALL="/home/loona/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"






# miscellaneous
alias BetterDiscord="BetterDiscord --no-sandbox" # runs the better discord installer
alias kwin_fix="kwin_x11 --replace &" # occasionally kwin fucks. this fixes that

# lol
alias sus="while : 
do
  echo -n 'ඞ' 
done"

# history
HISTTIMEFORMAT="%y-%M-%D %t " # shows datetime when using "history"
HISTCONTROL=ignoreboth

# Exports
export SDL_AUDIODRIVER='dsp'
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;36;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;40;1:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.swp=00;90:*.tmp=00;90:*.dpkg-dist=00;90:*.dpkg-old=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:';
export LS_COLORS


export NVM_DIR="/home/$user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH variables
export PATH="/home/$user/.local/bin:$PATH"
export PATH="/home/$user/programming/scripts:$PATH"
export PATH="/home/$user/programming/scripts/calculators:$PATH"
export PATH="/home/$user/programming/scripts/speedtest:$PATH"
export PATH="$HOME/programming/scripts/BD:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
