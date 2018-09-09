# Defined in - @ line 0
function gpr --description 'alias gpr=g pull --rebase'
	git pull --rebase $argv;
end
