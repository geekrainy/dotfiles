#!/bin/sh

# Install brew and init
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update
brew tap homebrew/bundle
brew bundle

# Install nvm
git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm

# Link zsh files
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Link mackup configuration files
ln -s $HOME/.dotfiles/.mackup $HOME/.mackup
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
