function __cd
    if test (count $argv) -gt 0
        cd $argv
    end
end

function cdf
    fd . -t d | fzf | read -l value
    __cd $value
end
