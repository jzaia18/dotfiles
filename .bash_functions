cd() { builtin cd "$@"; ls -A --color=auto;}

cj() { rm ./#* *~ .*~ *.class *.pyc *.o 2> /dev/null; }

mkcd() { mkdir "$@" && cd "$@"; }

pp() { cj; git add . && git commit -am "$1" && git pull && git push; }

submod() { git pull && git submodule add $1 $2 && git commit -am "Add submodule $2" && git push; }
