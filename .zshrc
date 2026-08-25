eval "$(starship init zsh)"

export PATH="$HOME/.config/scripts:$PATH"

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pacman aliases
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'

# search repo
alias findpkg='pacman -Ss'
alias infopkg='pacman -Si'

# search system
alias listpkgs='pacman -Qs'

# list aliases 
alias ls='ls -1 --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'

# misc 
alias attach='tmux attach'
alias ff='fastfetch'
alias c='clear'
alias ~='cd ~'
