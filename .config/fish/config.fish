if status is-interactive

    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

starship init fish | source

fzf --fish | source

eval (/usr/bin/try init ~/src/tries | string collect)
