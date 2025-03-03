if not type eza >/dev/null 2>&1
    exit
end

abbr -a ls eza
abbr -a la eza --long --all -g
abbr -a ll eza --long -g
abbr -a tree eza --long --tree -g

