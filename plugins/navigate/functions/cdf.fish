function __set_commandline
    if test (count $argv) -gt 0
        commandline $argv
    else
        commandline ''
    end
end

function cdf
    fd . -t d | fzf --height 40% --border --reverse --no-sort | read -l value
    cd $value
end
