function __generate_prefix_paths
    set -l path_components $argv
    for i in (seq (count $path_components))
        echo (string join '/' $path_components[1..$i])
    end
end

function bdf
    set -l cwd_components (pwd | string split '/')
    __generate_prefix_paths $cwd_components | grep / | grep -v (pwd) | fzf | read -l choice
    _cd_if_given $choice
end
