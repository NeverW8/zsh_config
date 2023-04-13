# Pathing
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
# Set golang path
export PATH=$PATH:/usr/local/go/bin
# Path to your oh-my-zsh installation.
export ZSH="/home/ghost/.oh-my-zsh"

# The following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Plugins
plugins=(git
    pass
    fancy-ctrl-z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 fi


# Aliases
alias pw="tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo ''"
alias gcb="git checkout -b"
alias masta="git checkout master"
alias vim="nvim"


powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

