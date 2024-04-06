
export EDITOR="nvim"

# Tmux Stuff
tmux="TERM=screen-256color-bce tmux"

# Just some Paths
export PATH=$HOME/bin:/usr/local/bin:.:$PATH
export PATH=/Users/amer/.local/bin:$PATH
export PATH=${PATH}:/usr/local/mysql-8.0.32-macos13-arm64/bin
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
export ZSH="$HOME/.oh-my-zsh"

# Themes if I need them
ZSH_THEME=""

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search sudo )

source $ZSH/oh-my-zsh.sh 

# Aliases
alias givepassword='security find-generic-password -wa'
alias n="neofetch && todolist && echo '100 Euros Save, 50 Food, 50 Fun/Cards'"
alias ipaddress='ifconfig | grep -A 5 en0 | grep "inet " | cut -f2 -d " "' # User configuration export MANPATH="/usr/local/man:$MANPATH"
alias moo="cowsay I use Macos btw"
alias kys="sudo shutdown -h now"
unalias ls
alias vim="nvim"
alias ls="eza" 
alias todolist='ultralist list'
alias c='clear'
alias ':q'='nyancat'
alias b="brew"

# Other
[ -f "/Users/amer/.ghcup/env" ] && source "/Users/amer/.ghcup/env" # ghcup-envexport PATH=/opt/homebrew/anaconda3/bin:/usr/local/anaconda3/bin:/Users/amer/.local/bin:/Users/amer/bin:/usr/local/bin:.:/Users/amer/.local/bin:/Users/amer/bin:/usr/local/bin:.:/opt/homebrew/bin:/opt/homebrew/sbin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/TeX/texbin:/Applications/VMware Fusion.app/Contents/Public:/usr/local/share/dotnet:~/.dotnet/tools:/Users/amer/Library/Application Support/JetBrains/Toolbox/scripts:/usr/local/mysql-8.0.32-macos13-arm64/bin:/usr/local/mysql-8.0.32-macos13-arm64/bin >> ~/.zshrc
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export PATH=$PATH:/Users/amer/.spicetify
emulate sh -c 'source ~/.profile'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

function brew() {
  command brew "$@" 

  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_update
  fi
}


