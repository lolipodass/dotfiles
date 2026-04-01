function yin
     yay -Slq | fzf --multi --preview 'yay -Sii {}' --preview-window=down:75% --layout=default | xargs -ro yay -S
end
