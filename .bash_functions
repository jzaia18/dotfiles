# Navigation
cd() { builtin cd "$@"; ls -A --color=auto;}

mkcd() { mkdir "$@" && cd "$@"; }


# Cleanup
cj() { rm ./#* *~ .*~ *.class *.pyc *.o 2> /dev/null; }


# Activate virtualenvs
vact() { source "$1"/bin/activate }


# Git functions
pp() { cj; git add . && git commit -am "$1" && git pull && git push; }

submod() { git pull && git submodule add $1 $2 && git commit -am "Add submodule $2" && git push; }

pull() { git pull "$@" && git status && ls; }

push() { git push "$@"; }

# Not functions, but easier to keep all git stuff together
alias pushu='git push -u origin $(git branch --show-current)'
alias pullsh='git pull && git push && git status && ls'
alias aa='git add .'
alias clone='git clone'
