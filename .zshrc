# Path overrides
export PATH="/opt/homebrew/bin:$PATH"

# Useful aliases
alias gw="./gradlew"

# Configure shell apps
eval "$(starship init zsh)"
eval "$(atuin init zsh)"

# Activate zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
