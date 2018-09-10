function __cd_if_chosen
    if test (count $argv) -gt 0
        cd $argv
    end
end

function __generate_prefix_paths
    set -l path_components $argv
    for i in (seq (count $path_components))
        echo (string join '/' $path_components[0..$i])
    end
end

function bdf
    set -l cwd_components (pwd | string split '/')
    __generate_prefix_paths $cwd_components | grep / | grep -v (pwd) | fzf | read -l choice
    __cd_if_chosen $choice
end
