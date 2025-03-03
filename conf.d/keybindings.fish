function fish_toggle_private_mode
    if test -z "$fish_private_mode"
        set_color red
        echo PRIVATE MODE >&2
        set_color normal
        exec fish -P
    else
        set_color red
        echo Out of PRIVATE MODE >&2
        set_color normal
        exec fish
    end
end

function __fish_edit_clear_current_process
    commandline -rp ''
    if string match -r '\|$' (commandline -j) >/dev/null 2>&1
        commandline -f backward-delete-char
    end
end

function fish_user_key_bindings
    set -g fish_key_bindings fish_vi_key_bindings

    set -g fish_cursor_insert line
    set -g fish_cursor_external line
    set -g fish_cursor_visual block
    set -g fish_cursor_replace_one underscore
    set -g fish_cursor_replace underscore
    fish_default_key_bindings -M insert

    bind \ce edit_command_buffer
    bind --mode insert \ce edit_command_buffer
    bind \cw backward-kill-bigword
    bind --mode insert \cw backward-kill-bigword
    bind \ch backward-kill-word
    bind --mode insert \ch backward-kill-word
    bind \cp fish_toggle_private_mode
    bind --mode insert \cp fish_toggle_private_mode

    bind \cu __fish_edit_clear_current_process
    bind --mode insert \cu __fish_edit_clear_current_process

    bind L end-of-line backward-char
    bind H beginning-of-line
    bind --mode visual Y beginning-of-line

    bind yy 'commandline -f beginning-of-line begin-selection end-of-line backward-char;fish_clipboard_copy; commandline -f end-selection repaint-mode'

    fish_vi_key_bindings --no-erase insert
end

function __fish_cursor_style --on-variable fish_bind_mode
    switch $fish_bind_mode
        case default
            echo -en '\e[2 q'
        case insert
            echo -en '\e[6 q'
        case visual
            echo -en '\e[2 q'
    end
end
