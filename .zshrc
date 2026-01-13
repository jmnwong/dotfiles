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

# Update terminal UI when SSHing
ssh() {
  # Extract hostname from ssh arguments (skip flags and their values)
  local host=""
  local skip_next=false
  for arg in "$@"; do
    if $skip_next; then
      skip_next=false
      continue
    fi
    case "$arg" in
      -p|-l|-i|-F|-o|-J|-W|-L|-R|-D) skip_next=true ;;
      -*) ;;  # skip other flags
      *) host="$arg"; break ;;
    esac
  done

  # 1. Change background to a distinct "Alert" color (if terminal supports it)
  if _terminal_supports_osc; then
    printf '\e]11;#330000\a'
  fi

  # 2. Print a banner with the host being connected to
  if command -v figlet > /dev/null; then
    figlet -f starwars "${host:-SSH}"
  else
    echo "=== Connecting to: ${host:-SSH} ==="
  fi

  # 3. Execute the actual SSH command
  command ssh "$@"

  # 4. Reset background color back to terminal default upon logout (if terminal supports it)
  if _terminal_supports_osc; then
    printf '\e]111\a'
  fi
}
