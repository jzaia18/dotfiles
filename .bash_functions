cd() { builtin cd "$@"; ls --color=auto;}

cj() { rm ./#* *~ .*~ *.class *.pyc 2> /dev/null; }

mkcd() { mkdir "$@" && cd "$@"; }

pp() { cj; git pull && git add . && git commit -am "$1" && git push; }

submod() { git pull && git submodule add $1 $2 && git commit -am "Add submodule $2" && git push; }

joycons() { sudo ~/go/bin/jcdriver --invert LV --invert LH --invert RV --invert RH; }
