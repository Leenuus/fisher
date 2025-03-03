if not type gdb >/dev/null 2>&1
    exit
end

export GDBHISTFILE="$XDG_DATA_HOME"/gdb_history

abbr -a gdb gdb -q
