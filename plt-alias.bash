# Put this in .bashrc

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
           export MANPATH=$MANPATH:$PLTHOME/man
           export PLTPLANETDIR="$PLTHOME"/add-on/planet
           export PLTADDONDIR="$PLTHOME"/add-on
       elif [[ $# -gt 0 ]]; then
           (PLTHOME="$DIR"
            TEXINPUTS="$PLTHOME"/pkgs/slatex:
            MANPATH=$MANPATH:$PLTHOME/man
            PLTPLANETDIR="$PLTHOME"/add-on/planet
            PLTADDONDIR="$PLTHOME"/add-on
            eval "$@")
       fi
   fi

}
