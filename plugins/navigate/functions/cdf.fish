function _get_descendants; fd . -t d; end

function _get_ancestors
    function generate_prefixes
        set -l path_components $argv
        for i in (seq (count $path_components))
            echo (string join '/' $path_components[1..$i])
        end
    end

    set -l cwd_components (pwd | string split '/')
    generate_prefixes $cwd_components | grep / | grep -v (pwd)
end

function cdf
    function echo_all; for arg in $argv; echo $arg; end; end
    
    set -l paths (_get_ancestors) (_get_descendants)
    echo_all $paths | fzf | _cd_if_given
end
