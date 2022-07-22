# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

source ~/.git-prompt.sh # used for the git-prompt

# If not running interactively, don't do anything
[[ $- != *i* ]] && return




# THE PROMPT
# below are all the components to the prompt.
# the prompt consists of:
#   is_root?     if the user is root
#   directory    the current directory
#   git_repo     the current git branch
#   ending       '$'

# determines if the user is root. (root!)
if [[ $(id -u) -eq 0 ]];
then
  is_root='\[\033[31;1m\](root) '
else
  is_root=''
fi

directory='\[\033[0;1m\]\w' # the actual directory. normally; ~
git_parsed='\[\033[0;35;1m\]$(__git_ps1 " ⎇ [%s]")' # determines the git branch
ending=' \[\033[0;36;1m\]\$\[\033[0m\] ' # the ending; $
brace='\['

PS1=$is_root$directory$git_parsed$ending # the final prompt
PS2='\[\033[0;36;1m\] ->\[\033[0m\]' # the 2nd prompt. '->'





# some ls aliases
alias ls="ls --color"
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias lal="ls -la"
alias lla="ls -la"
alias all="ls -la"
alias lh="ls -d .?*"
alias llh="ls -ld .?*"
alias cd...="cd ..;cd .."

# general bash aliases
alias cat="cat -n"
alias slep='systemctl suspend'
alias gn="/home/loona/programming/scripts/gn.sh"
alias kys="exit"
alias bashtop="bpytop"
alias reparse=". /home/loona/.bashrc"
alias refresh="clear;cd"
alias :q="exit"
alias :Q="exit"

# dev tools
alias run="./executables/main"
alias iplist="nmap -sn 192.68.0.0/24" # make this a function
alias findpi="iplist | grep pi"
alias fix-audio="systemctl --user restart pipewire.service"
alias node-repl="node .repl.js" # starts node repl

# miscellaneous
alias BetterDiscord="BetterDiscord --no-sandbox"



# Exports
export SDL_AUDIODRIVER='dsp'
export EDITOR="/usr/bin/vim"

export PYTHONSTARTUP="/home/loona/.pythonrc"

export NVM_DIR="/home/loona/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/home/loona/.local/bin:$PATH"
export PATH="/home/loona/programming/scripts:$PATH"
export PATH="/home/loona/programming/scripts/calculators:$PATH"

