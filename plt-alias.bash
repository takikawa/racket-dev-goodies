# Put this in .bashrc

# Alias the following binaries in your $PATH to this script:
PATH_TO_PLT_BIN="plt-bin"

alias drracket="$PATH_TO_PLT_BIN drracket"
alias drscheme="$PATH_TO_PLT_BIN drscheme"
alias gracket="$PATH_TO_PLT_BIN gracket"
alias gracket-text="$PATH_TO_PLT_BIN gracket-text"
alias mred="$PATH_TO_PLT_BIN mred"
alias mred-text="$PATH_TO_PLT_BIN mred-text"
alias mzscheme="$PATH_TO_PLT_BIN mzscheme"
alias racket="$PATH_TO_PLT_BIN racket"
alias raco="$PATH_TO_PLT_BIN raco"
alias scribble="$PATH_TO_PLT_BIN scribble"
alias slatex="$PATH_TO_PLT_BIN slatex"
alias slideshow="$PATH_TO_PLT_BIN slideshow"

function plt() {

   if [[ $# == 0 ]]; then
       echo "PLTHOME = $PLTHOME"
   elif [[ $# -ge 1 ]]; then
       if [[ -d "$1" ]]; then
           DIR=`cd "$1"; pwd -P`
           shift
       else
           echo "ERROR: '$1' does not exist."
           false
       fi
       if [[ $# == 0 ]]; then
           export PLTHOME="$DIR"
           export TEXINPUTS="$PLTHOME"/pkgs/slatex:
           export PLTPLANETDIR="$PLTHOME"/add-on/planet
           export PLTADDONDIR="$PLTHOME"/add-on
       elif [[ $# -gt 0 ]]; then
           (PLTHOME="$DIR"
            TEXINPUTS="$PLTHOME"/pkgs/slatex:
            PLTPLANETDIR="$PLTHOME"/add-on/planet
            PLTADDONDIR="$PLTHOME"/add-on
            eval "$@")
       fi
   fi

}
