set PATH $HOME/.cargo/bin $PATH

if status --is-interactive
    set -g fish_user_abbreviations
    abbr --add -- - 'cd -'
    abbr --add ... ../..
    abbr --add c code
end
