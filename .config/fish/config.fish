if status is-interactive

    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

starship init fish | source

fzf --fish | source

eval (/usr/bin/try init ~/src/tries | string collect)

atuin init fish | source

set -gx EDITOR zeditor
