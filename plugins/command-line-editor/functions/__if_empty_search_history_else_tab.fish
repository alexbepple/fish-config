function __set_commandline
    if test (count $argv) -gt 0
        commandline $argv
    else
        commandline ''
    end
end

function __cle_search_history
    history | string trim | awk '!a[$0]++' | fzf | read -l value
    __set_commandline $value
end

function __if_empty_search_history_else_tab
    if test -z (commandline)
        __cle_search_history
    else
        eval $__cle_tab_command
    end
end
