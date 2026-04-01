function yun
    yay -Qq | fzf --multi --preview 'yay -Qi {}' --preview-window=down:75% --layout=default | xargs -ro yay -Rns
end
