# Path overrides
export PATH="/opt/homebrew/bin:$PATH"  # homebrew
export PATH="$HOME/.local/bin:$PATH"  # other stuff like cursor agent

# Useful aliases
alias gw="./gradlew"

# Configure shell apps
eval "$(starship init zsh)"
eval "$(atuin init zsh)"

# Activate zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
