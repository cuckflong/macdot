# macdot

## Brew Install
```
brew install antibody
brew install bat
brew install exa
brew install fd
brew install fzf
brew install starship
brew install zoxide
brew install grc
brew install ripgrep
brew install tmux
brew install spaceman
brew install --cask miniconda
```

## Vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Reload `.vimrc` and `:PlugInstall` to install plugins.

## MACOS
### System Configruations
```
# Speed up dock animation
defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.4 && killall Dock
# Sort folders first in finder
defaults write com.apple.finder _FXSortFoldersFirst -bool true; killall Finder
# Show full path in finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
# Show active app only in dock
defaults write com.apple.dock static-only -bool true; killall Dock
```

### Apps
* iTerm2
* Swish
* CleanshotX
* AltTab
* Raycast
* iStat Menus
* Bartender 4
* Spaceman
* Yoink
* UpNote
