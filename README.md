# Dot-Files

# Contains configuration files and scripts to quickly setup a work environment

## Mac OS

### Stow

```
brew install stow
```

#### neovim

```
brew install neovim
```

#### neovim plugged

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

#### Finally do the thing

```
./.dotfiles/OSX.sh
```
