if not type tmux >/dev/null 2>&1
    exit
end

abbr -a tml 'tmux list-sessions'
abbr -a tmk 'tmux list-keys | $PAGER'
abbr -a tmK 'tmux kill-server'
abbr -a tma 'tmux attach'
abbr -a tmd 'tmux detach'
abbr -a tmxu tmux
abbr -a tm tmux
