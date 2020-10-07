function subdl
    set -x OPENSUBTITLES_USERNAME alexbepple
    set -q OPENSUBTITLES_PASSWORD || echo 'Warning: OPENSUBTITLES_PASSWORD is not set.'
    LC_ALL=C subliminal --opensubtitles "$OPENSUBTITLES_USERNAME" "$OPENSUBTITLES_PASSWORD" download $argv
end
