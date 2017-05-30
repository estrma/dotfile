#!/usr/bin/env bash
if ! is-executable brew -o ! is-executable git; then
  echo "Skipped: npm (missing: brew and/or git)"
  return
fi

brew install nvm

export DOTFILES_BREW_PREFIX_NVM=`brew --prefix nvm`
set-config "DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_CACHE"

. "${DOTFILES_DIR}/system/.nvm"
nvm install 8
nvm alias default 8

# Globally install with npm

packages=(
bower
concurrently
devtool
dploy
electron
gulp
live-server
mocha
node-inspector
nodemon
npm
webpack
webpack-dev-server
)

npm install -g "${packages[@]}"
