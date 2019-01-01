function cdf
    fd . -t d | fzf | read -l value
    _cd_if_given $value
end
