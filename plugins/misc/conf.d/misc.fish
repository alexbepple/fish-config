# set -x LANG en_US.utf8
# set -x LC_ALL C

set --prepend PATH /usr/local/bin
set --prepend PATH /usr/local/sbin

set --prepend PATH /usr/local/texlive/bin

set --prepend PATH $HOME/.cargo/bin

set --prepend PATH $HOME/computing/dotfiles.et.al/npm/bin

set -x GOPATH $HOME/.go
set --prepend PATH $GOPATH/bin

export ERL_AFLAGS="-kernel shell_history enabled"

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

abbr js just

if status --is-interactive
    set NIX_LINK $HOME/.nix-profile
    set NIX_USER_PROFILE_DIR /nix/var/nix/profiles/per-user/$USER
    set --export NIX_PATH $HOME/.nix-defexpr/channels
    set --export NIX_PROFILES "/nix/var/nix/profiles/default $HOME/.nix-profile"
    set --export NIX_SSL_CERT_FILE "$NIX_LINK/etc/ssl/certs/ca-bundle.crt"
    set --export --append MANPATH "$NIX_LINK/share/man"
    set --prepend PATH "$NIX_LINK/bin"
end

abbr ne nix-env
abbr ns nix-shell

eval (direnv hook fish)

abbr v vagrant
