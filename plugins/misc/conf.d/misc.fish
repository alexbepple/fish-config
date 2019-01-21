set -x LC_ALL en_US

set --prepend PATH $HOME/.cargo/bin

set --prepend PATH $HOME/computing/dotfiles.et.al/npm/bin

set -x GOPATH $HOME/.go
set --prepend PATH $GOPATH/bin

set exa exa -F
abbr l $exa
abbr ll $exa -l

abbr c code

set -x LESS -i
abbr L bat

set -x FZF_DEFAULT_OPTS '--height 40% --border --reverse --no-sort'
