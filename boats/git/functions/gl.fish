# Defined in - @ line 0
function gl --description 'alias gl=g log --oneline --decorate --all --graph -12'
	git log --oneline --decorate --all --graph -12 $argv;
end
