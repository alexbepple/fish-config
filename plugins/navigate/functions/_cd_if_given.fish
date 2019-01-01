function _cd_if_given
    if test (count $argv) -gt 0
        cd $argv
    end
end
