function __osc133_before_prompt --on-event fish_prompt
        #<OSC>133;A<ST>
        printf '\e]133;A\e\\'
end

function __osc133_before_command --on-event fish_preexec
        #<OSC>133;C<ST>
        printf '\e]133;C\e\\'
end
