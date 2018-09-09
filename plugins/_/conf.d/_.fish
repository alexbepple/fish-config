# It's important that this declaration lives in the first plugin (in glob order).
# Otherwise, after installing all plugins, there is a change in fishd.*,
# as fish_user_abbreviations have become universal.
set -g fish_user_abbreviations
