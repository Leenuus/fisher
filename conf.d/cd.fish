if not type zoxide >/dev/null 2>&1
    exit
end

zoxide init fish | source

bind \co '__zoxide_zi; commandline -f repaint'
bind --mode insert \co '__zoxide_zi; commandline -f repaint'

abbr -a cd z
abbr -a cc z ..
