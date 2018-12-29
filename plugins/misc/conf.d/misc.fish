set --prepend PATH $HOME/.cargo/bin

set -x GOPATH $HOME/.go
set --prepend PATH $GOPATH/bin

abbr --add c code
abbr L less

set -x FZF_DEFAULT_OPTS '--height 40% --border --reverse --no-sort'
