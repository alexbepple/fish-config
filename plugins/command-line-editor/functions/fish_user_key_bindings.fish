function fish_user_key_bindings
    # accept suggestions more easily, as Control-F is hard to reach
    bind ƒ forward-char

    bind ª backward-word # alt-h
    bind @ forward-word # alt-l

    bind ∆ up-or-search # alt-k
    bind º down-or-search # alt-j

    set -g __cle_tab_command _pisces_complete
    bind \t __if_empty_search_history_else_tab
end
