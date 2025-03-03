if not type man >/dev/null 2>&1
  exit
end

set -gx MANWIDTH 80

if type nvim >/dev/null 2>&1
  set -gx MANPAGER 'nvim +Man!'
end
