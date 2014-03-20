#!/bin/bash

# set up aliases to plt-bin

PLT_BIN=$HOME/local/bin/plt-bin
PREFIX=$HOME/local/bin
NAMES="drracket mred mzpp pdf-slatex plt-r5rs racket
       scribble slideshow gracket mred-text mzscheme
       plt-games plt-r6rs racket-package-manager setup-plt
       swindle gracket-text mzc mztext plt-help plt-web-server
       raco slatex"

read -e -p "Where is the plt-bin script located? " -i $PLT_BIN PLT_BIN
read -e -p "In which directory should I create the links? " -i $PREFIX PREFIX

for name in $NAMES
do
  if [ -e "$PREFIX/$name" ]
  then
    echo "$PREFIX/$name already exists, not linking";
    continue
  else
    ln -s $PLT_BIN $PREFIX/$name
    echo "Linking $PREFIX/$name";
  fi
done
