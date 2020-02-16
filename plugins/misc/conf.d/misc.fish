set -x LANG en_US.utf8
set -x LC_ALL en_US

set HOMEBREW_BIN /usr/local/bin
contains $HOMEBREW_BIN $PATH; or set --prepend PATH $HOMEBREW_BIN

set --prepend PATH $HOME/.cargo/bin

set --prepend PATH $HOME/computing/dotfiles.et.al/npm/bin

set -x GOPATH $HOME/.go
set --prepend PATH $GOPATH/bin

set exa exa -F
abbr l $exa
abbr ll $exa -l

abbr c code
abbr c. 'code .'
abbr o open

set -x LESS -i
abbr L bat
complete -c bat -a '(__fish_complete_path)'

set -x FZF_DEFAULT_OPTS '--height 40% --border --reverse --no-sort'

status --is-interactive; and bass source $HOME/.nix-profile/etc/profile.d/nix.sh
abbr ne nix-env
abbr ns nix-shell

eval (direnv hook fish)

abbr v vagrant
