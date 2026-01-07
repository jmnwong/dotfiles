# dotfiles

- ghostty config
- vimrc
- zshrc

# Utilities
```zsh
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Homebrew Apps
```zsh
brew install lnav atuin btop scrcpy starship
```

# Vim Plugins

- (NERDTree)[https://github.com/preservim/nerdtree]
```zsh
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```
