if type nvimpager >/dev/null 2>&1
    set -gx PAGER nvimpager
else if type less >/dev/null 2>&1
    set -gx PAGER less
else
    set -gx PAGER more
end

if type less >/dev/null 2>&1
	set -gx LESS '-Ri'
end

abbr --position anywhere -a L '| $PAGER'
abbr --position anywhere -a LL '2>| $PAGER'
abbr --position anywhere -a LLL '2>&1 | $PAGER'
