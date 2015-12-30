function j
	cd (autojump $argv)
end

function fish_right_prompt
	printf "%s" (date)
end
function fish_prompt -d "Write out the prompt"
	echo ''
    # printf '%s@%s%s %s %s' (whoami) (hostname | cut -d . -f 1)  (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    printf '%s%s %s %s' (whoami) (set_color $fish_color_cwd) (pwd) (set_color normal)

	# show git branch
	set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
	if [ $git_branch ]
		printf 'git:(%s%s%s)' (set_color red) $git_branch (set_color normal)  
	end
	echo -e '> '
end

# alias
function gst 
	git status $argv
end
function gdf
	git diff $argv
end
function gdw
	git diff --color-words
end
function gbr
	git branch $argv
end
