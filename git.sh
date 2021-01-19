#!/bin/sh

# auto update git config
case $1 in
  clone)
    git $@ 
    ;;
  *)
    git $@
    ;;
esac
