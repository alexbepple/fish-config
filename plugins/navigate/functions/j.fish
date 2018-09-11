function j
    function __cd_if_chosen; test (count $argv) -gt 0; and cd $argv; end
    function __extract_paths; awk '{ $1 = ""; print $0 }' | string trim; end

    z -l ^/dev/null | __extract_paths | fzf | read -l choice
    __cd_if_chosen $choice
end
