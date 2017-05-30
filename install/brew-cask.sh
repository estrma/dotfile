#!/usr/bin/env bash
if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  automake
  bash-completion
  bfg
  cloog@0.15
  dnsmasq
  gd
  gdal
  ghostscript
  gnupg
  jbig2dec
  libmpc@0.8
  librsvg
  libyaml
  lzlib
  makedepend
  homebrew/science/matplotlib
  mongodb
  mysql
  nmap
  homebrew/php/php70-mcrypt
  homebrew/php/php70-xdebug
  homebrew/php/phpmyadmin
  py2cairo
  python
  rbenv
  ssh-copy-id
  thefuck
  ttygif
  wget
  yarn
  zeromq
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
