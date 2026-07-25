eval "$(starship init zsh)"

export PATH="$HOME/.config/scripts:$PATH"

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ff='fastfetch'
alias c='clear'
alias ~='cd ~'

alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
