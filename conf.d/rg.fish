if not type rg >/dev/null 2>&1
  exit
end

abbr -a --set-cursor grep rg -i -L
abbr -a --set-cursor rg rg -i -L
abbr -a --set-cursor rgw rg -i -L "'\b%\b'"
abbr -a rga rg -i -L --hidden --no-ignore
abbr -a --set-cursor --position anywhere R "| rg -i -L %"
abbr -a --set-cursor --position anywhere Rw  "| rg -i -L '\b%\b'"
