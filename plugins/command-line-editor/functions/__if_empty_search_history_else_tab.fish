function __set_commandline
    if test (count $argv) -gt 0
        commandline $argv
    else
        commandline ''
    end
end

function __nauniq; awk '!a[$0]++'; end

function __cle_search_history
    set -l value (history | string trim | __nauniq | fzf)
    __set_commandline $value
end

function __if_empty_search_history_else_tab
    if test -z (commandline)
        __cle_search_history
    else
        eval $__cle_tab_command
    end
end
