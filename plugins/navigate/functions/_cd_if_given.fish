function _cd_if_given
    set -l destination $argv
    if test (count $destination) -eq 0
        read destination
    end

    if test (count $destination) -gt 0
        cd $destination
    end
end
