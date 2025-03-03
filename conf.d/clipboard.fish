if test -z "$DISPLAY" && test -n "$TMUX"
		abbr --position anywhere -a C '| tmux load-buffer -'
else
	if type xclip >/dev/null 2>&1
		abbr --position anywhere -a C '| xclip -selection clipboard'
	else if type xsel >/dev/null 2>&1
		abbr --position anywhere -a C '| xsel -b'
	end
end
