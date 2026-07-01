eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/fvm/default/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/mac/.antigravity-ide/antigravity-ide/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load Zsh Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load Zsh Autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export JAVA_HOME="/opt/homebrew/opt/openjdk@17"

eval "$(fnm env --use-on-cd)"

export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/Users/mac/.opencode/bin:$PATH


source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Bind tombol Panah Atas dan Panah Bawah agar berfungsi sebagai pencari
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Mengaktifkan advanced completion system
autoload -Uz compinit && compinit

# Mengaktifkan fuzzy matching (pencocokan samar)
# Ini akan mencocokkan huruf besar/kecil, dan memperbolehkan karakter di depan/belakang teks yang diketik
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={a-zA-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
