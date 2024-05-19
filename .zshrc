# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Pathing
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
# Set golang path
export PATH=$PATH:/usr/local/go/bin
# Path to your oh-my-zsh installation.
export ZSH="/home/ghost/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# The following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Plugins
plugins=(git
    pass
    fancy-ctrl-z
    zsh-autosuggestions
    zsh-syntax-highlighting
    kubectl-autocomplete
    zsh-fzf-history-search
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 fi

# FZF - the greatest thing since sliced bread
qw_function() {
  cd "$(find * -type d | fzf)"
}

alias qw=qw_function


# Aliases
alias pw="tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo ''"
alias gcb="git checkout -b"
alias masta="git checkout master"
alias vim="nvim"
alias ovim="/bin/vim"
alias k="kubectl"

# Timerstuff
## Requires this timer go binary
## https://github.com/caarlos0/timer
declare -A pomo_options
pomo_options["work"]="45"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat
  timer ${pomo_options["$val"]}m
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"

alias bat="batcat"
# Powerline
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
