if not type fzf >/dev/null 2>&1
    exit
end

set -gx FZF_DEFAULT_OPTS '--layout=reverse --border=rounded --inline-info -m --bind=ctrl-h:backward-kill-word,ctrl-j:preview-page-down,ctrl-k:preview-page-up --no-multi'

function _fzf_search_history --description "Search command history. Replace the command line with the selected command."
    if test -z "$fish_private_mode"
        builtin history merge
    end

    if not set --query fzf_history_time_format
        set -f fzf_history_time_format "%m-%d %H:%M:%S"
    end

    set -f time_prefix_regex '^.*? │ '
    set -f commands_selected (
        builtin history --null --show-time="$fzf_history_time_format │ " |
        fzf --cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*" \
			--read0 \
            --print0 \
            --multi \
            --scheme=history \
            --prompt="History> " \
            --query=(commandline) \
            --preview="string replace --regex '$time_prefix_regex' '' -- {} | fish_indent --ansi" \
            --preview-window="bottom:3:wrap" \
            $fzf_history_opts |
        string split0 |
        # remove timestamps from commands selected
        string replace --regex $time_prefix_regex ''
    )

    if test $status -eq 0
        commandline --replace -- $commands_selected
    end

    commandline --function repaint
end

function __fzf_search_vars
	set res (
    set | awk '{ if ($1 !~ /^_/ )print $1 }' |
        SHELL=fish fzf --cycle --layout=reverse --border --height=70% --preview-window=wrap \
            --preview 'set --show {}' \
            --prompt='Env> '
	)
	commandline -f repaint
    test -n "$res" && commandline -i "\$$res"
end

bind \cr _fzf_search_history
bind \cf __fzf_search_vars

bind --mode insert \cr _fzf_search_history
bind --mode insert \cf __fzf_search_vars

abbr -a --position anywhere F '| fzf'
