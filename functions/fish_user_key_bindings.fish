
function fish_user_key_bindings
    # accept suggestions more easily, as Control-F is hard to reach
    bind ƒ forward-char
    ### fzy ###
    bind \cr 'fzy_select_history (commandline -b)'
    bind \cf 'fzy_select_directory'
    ### fzy ###
end
