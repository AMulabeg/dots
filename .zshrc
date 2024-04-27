export EDITOR="nvim"

# Tmux Stuff
tmux="TERM=screen-256color-bce tmux"

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# Just some Paths
export PATH=$HOME/bin:/usr/local/bin:.:$PATH
export PATH=/Users/amer/.local/bin:$PATH
export PATH=${PATH}:/usr/local/mysql-8.0.32-macos13-arm64/bin
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"

# Themes if I need them
# source ~/scripts/git.plugin.zsh

autoload -U compinit; compinit
source ~/scripts/fzf-tab/fzf-tab.plugin.zsh
source ~/scripts/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/scripts/sudo.plugin.zsh
emulate sh -c 'source ~/.profile'
# Plugins
# Aliases
alias givepassword='security find-generic-password -wa'
alias n="neofetch --ascii_distro arch && todolist"
alias ipaddress='ifconfig | grep -A 5 en0 | grep "inet " | cut -f2 -d " "' # User configuration export MANPATH="/usr/local/man:$MANPATH"
alias moo="cowsay I use Macos btw"
alias kys="sudo shutdown -h now"
alias vim="nvim"
alias todolist='ultralist list'
alias ':q'='nyancat'
alias b="brew"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias oo="cd ~/Documents/Obsidian Vault"
alias "pirates"="ani-cli one piece"
# ---- UltraList ----
alias u="ultralist"
alias uc="ultralist l due:agenda group:context"
alias up="ultralist l due:agenda group:project"
alias tod="ultralist l group:project due:tod"
alias tom="ultralist l group:project due:tom"
alias mon="ultralist l group:project due:mon"
alias tue="ultralist l group:project due:tue"
alias wed="ultralist l group:project due:wed"
alias thu="ultralist l group:project due:thu"
alias fri="ultralist l group:project due:fri"
alias c="ultralist l completed:tod"

# pipe ultralist into fzf for ultra-fast searching of tasks!
alias uf="script -c \"ultralist l\"  < /dev/null | fzf --ansi"

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

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}
# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
# ----- Bat (better cat) -----

export BAT_THEME=tokyonight_night
unsetopt BEEP
# ----- Work -----
c
