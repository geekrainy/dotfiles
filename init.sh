#!/bin/sh

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update
brew tap homebrew/bundle
brew bundle

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

ln -s $HOME/.dotfiles/.mackup $HOME/.mackup
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
