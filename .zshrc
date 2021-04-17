PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
unsetopt autocd extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/elp/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias q='exit'
alias ls='ls --color=auto'
alias rr='ranger'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias top='htop'
alias du="du -ach | sort -h"
alias mem='free -mlt'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias tarf='tar -cvzf '
alias untar='tar -xvzf '
alias c='clear'
alias ..='cd ..'
alias ...='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias ping='ping -c 5'
alias ipe='curl ipinfo.io/ip'
alias ipi='hostname -I'
alias ports='netstat -tulanp'
alias fastping='ping -c 100 -s.2'
alias www='python -m SimpleHTTPServer 8000'
alias ve='python3 -m venv venv'
alias va='source venv/bin/activate'
alias gg='lazygit'
alias save='git add . && git commit -m .'
alias gpr='git pull --rebase'
alias godev="cd $HOME/git/wave"

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
export RIPGREP_CONFIG_PATH=$HOME/.ripgrep

export FZF_DEFAULT_COMMAND='fd --type f --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d ."
export FZF_COMPLETION_TRIGGER='jj'

export PATH=$PATH:/usr/local/go/bin:$HOME/.local/bin:$HOME/zig
