# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt autocd
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
alias rgf='rg --files | rg'
alias q='exit'
alias fd='fdfind'
alias bat='batcat'
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
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias top='bpytop'
alias du="du -ach | sort -h"
alias mem='free -mlt'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias tarf='tar -cvzf '
alias untarz='tar -xvzf '
alias tarj='tar -cvjf '
alias untarj='tar -xvjf '
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
alias www='python3 -m SimpleHTTPServer 8000'
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
alias timediff="python3 $HOME/bin/timediff.py"
alias beep="paplay /usr/share/sounds/Pop/stereo/alert/alarm-clock-elapsed.oga"

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
export RIPGREP_CONFIG_PATH=$HOME/.ripgrep

export FZF_DEFAULT_COMMAND='fdfind --type f --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type d ."
export FZF_COMPLETION_TRIGGER='jj'

export R_LIBS_USER=$HOME/.r-libs
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export PATH=$PATH:$HOME/bin/zig:$HOME/git/zls/zig-out/bin
export PATH=$PATH:$HOME/bin/flutter/bin
export TESSDATA_PREFIX=/usr/share/tesseract-ocr/4.00/tessdata

# CUDA
export PATH=/usr/local/cuda-12.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
