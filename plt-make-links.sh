#!/bin/bash

# set up aliases to plt-bin

PLT_BIN_DEFAULT=$HOME/local/bin/plt-bin
PREFIX_DEFAULT=$HOME/local/bin
NAMES="drracket mred mzpp pdf-slatex plt-r5rs racket
       scribble slideshow gracket mred-text mzscheme
       plt-games plt-r6rs racket-package-manager setup-plt
       swindle gracket-text mzc mztext plt-help plt-web-server
       raco slatex
       racketcs racocs scribblecs gracketcs racket-documentationcs
       racketbc racobc scribblebc plt-r5rsbc plt-r6rsbc plt-web-serverbc"

read -e -p "Where is the plt-bin script located? (default: $PLT_BIN_DEFAULT)" PLT_BIN
PLT_BIN=${PLT_BIN:-$PLT_BIN_DEFAULT}
read -e -p "In which directory should I create the links? (default: $PREFIX_DEFAULT)" PREFIX
PREFIX=${PREFIX:-$PREFIX_DEFAULT}

for name in $NAMES
do
  if [ -e "$PREFIX/$name" ]
  then
    echo "$PREFIX/$name already exists, not linking";
    continue
  else
    mkdir -p $PREFIX
    ln -s $PLT_BIN $PREFIX/$name
    echo "Linking $PREFIX/$name";
  fi
done
