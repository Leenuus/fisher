# NOTE: I am sick of this shit
function nop
    set_color red
    echo 'You invoke <NOP>'
    set_color normal
end
abbr -a w nop
abbr -a import nop

abbr -a shutdown "shutdown now"
abbr -a x 'chmod +x'
abbr -a cls clear
abbr -a fish exec fish
abbr -a --set-cursor lr 'ln -s (realpath %)'

abbr -a pp prevd
abbr -a p nextd
abbr -q cc || abbr -a cc "cd .."

function gtmp
    set -l tmp (mktemp -d)
    echo "$tmp"
    cd $tmp
end

# NOTE: just because perl-rename is much better
# also I love perl
if type perl-rename >/dev/null 2>&1
    abbr -a rename perl-rename --dry-run
end

abbr -q su || abbr -a su 'su -Pl -w DISPLAY,XAUTH_COOKIES'

abbr -a unset 'set -e'

abbr -a whcih which
abbr -a whihc which
abbr -a mdkir mkdir


abbr --position anywhere -a D '>/dev/null 2>&1'
abbr --position anywhere -a DD '>/dev/null'
abbr --position anywhere -a DDD '2>/dev/null'

abbr -a ps ps aux
abbr -a psr 'ps aux | rg -i '
abbr -a pr pgrep --list-full

abbr --position anywhere -a W '| wc -l'
