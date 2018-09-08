set PATH $HOME/.cargo/bin $PATH

if status --is-interactive
    abbr --add -- - 'cd -'
    abbr --add ... ../..
    abbr --add c code
end
