if not type jless >/dev/null 2>&1
  exit
end

abbr -a --position anywhere J '| jless'
abbr -a --position anywhere JJ '2>| jless'
abbr -a --position anywhere JJJ '2>&1 | jless'
abbr -a --position anywhere Y '| jless --yaml'
abbr -a --position anywhere YY '2>| jless --yaml'
abbr -a --position anywhere YYY '2>&1 | jless --yaml'
