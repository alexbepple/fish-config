# Defined in - @ line 0
function gd --description 'alias gd=g diff --histogram --word-diff=color'
	git diff --histogram --word-diff=color $argv;
end
