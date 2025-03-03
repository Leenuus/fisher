if type nvim >/dev/null 2>&1
    set -gx EDITOR nvim
else if type vim >/dev/null 2>&1
    set -gx EDITOR vim
else if type vi >/dev/null 2>&1
    set -gx EDITOR vi
end

abbr -a v $EDITOR
