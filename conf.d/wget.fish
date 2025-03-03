if not type wget >/dev/null 2>&1
  exit
end

abbr -a --set-cursor wg "wget --no-hsts '%'"
abbr -a --set-cursor wget "wget --no-hsts '%'"
