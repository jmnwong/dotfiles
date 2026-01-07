# dotfiles

- ghostty config
- ~/.vimrc
- ~/.tmux.conf
- ~/.zshrc

## Utilities
```zsh
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Homebrew Apps
```zsh
brew install atuin btop lnav scrcpy starship tmux
```
- [atuin](https://github.com/atuinsh/atuin)
- [btop](https://github.com/aristocratos/btop)
- [lnav](https://lnav.org/)
- [scrcpy](https://github.com/Genymobile/scrcpy)
- [starship](http://starship.rs/)
- [tmux](https://github.com/tmux/tmux/wiki/Getting-Started)


## Vim Plugins

- [NERDTree](https://github.com/preservim/nerdtree)
```zsh
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```
