function j
    function __extract_paths; awk '{ $1 = ""; print $0 }' | string trim; end

    z -l ^/dev/null | __extract_paths | fzf -1 -q $argv | _cd_if_given
end
