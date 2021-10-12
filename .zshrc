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

# Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' (%b)'
precmd() { vcs_info }
setopt PROMPT_SUBST
NL=$'\n'
PROMPT='
%n@%m:%B%F{blue}%~%f%b${vcs_info_msg_0_}
$ '

# Base16 Shell
BASE_16_THEME="$HOME/.config/base16-shell/scripts/base16-onedark.sh"
[ -n "$PS1" ] && \
    [ -s "$BASE_16_THEME" ] && \
            source "$BASE_16_THEME"

# Aliases
alias q='exit'
alias rmf='rm -rf'
alias ls='ls --color=auto'
alias rr='ranger'
alias feh='feh -dqp.'
alias fehm='feh -m' # montage
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='exa -alF'
alias la='exa -A'
alias l='exa -F'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias update='sudo pacman -Syu'
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
alias vd='deactivate'
alias gg='lazygit'
alias gs='git status'
alias gl='git log --oneline'
alias save='git add . && git commit -m .'
alias gpr='git pull --rebase'
alias dev="cd $HOME/git/h2oai/wave"
alias web="cd $HOME/git/lo5/lo5.github.io"
alias todo="cd $HOME/git/lo5/lo5.github.io; vim todo.md"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export RIPGREP_CONFIG_PATH=$HOME/.ripgrep

export FZF_DEFAULT_COMMAND='fd --type f --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d ."
export FZF_COMPLETION_TRIGGER='jj'
export BAT_THEME="OneHalfDark"

export R_LIBS_USER=$HOME/.r-libs
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/.local/bin:$HOME/zig

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

