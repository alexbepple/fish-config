function __cle_set_convenience_bindings
    set bind bind -M $argv[1]

    # accept suggestions more easily, as Control-F is hard to reach
    $bind ƒ forward-char

    $bind ª backward-word # alt-h
    $bind @ forward-word # alt-l

    $bind ∆ up-or-search # alt-k
    $bind º down-or-search # alt-j

    $bind \t __if_empty_search_history_else_tab
end

for mode in insert default
    __cle_set_convenience_bindings $mode
end

set -g fish_key_bindings fish_vi_key_bindings
